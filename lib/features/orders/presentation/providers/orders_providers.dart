import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/features/orders/data/datasources/orders_remote_datasource.dart';
import 'package:delivery_app/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/features/orders/domain/repositories/orders_repository.dart';
import 'package:delivery_app/features/restaurant/presentation/providers/restaurant_providers.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ordersRemoteDataSourceProvider = Provider<OrdersRemoteDataSource>(
  (ref) => OrdersRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final ordersRepositoryProvider = Provider<OrdersRepository>(
  (ref) => OrdersRepositoryImpl(
    remoteDataSource: ref.watch(ordersRemoteDataSourceProvider),
  ),
);

/// Customer orders from [GET /api/Order/customer], enriched with restaurant names.
final customerOrdersProvider =
    FutureProvider.autoDispose<List<CustomerOrder>>((ref) async {
  final res =
      await ref.watch(ordersRepositoryProvider).listCustomerOrders();
  final orders = res.fold(
    (f) => throw UserMessageException(f.message),
    (list) => list,
  );
  return _enrichCustomerOrders(ref, orders);
});

/// Single order from [GET /api/Order/{id}] for tracking and review screens.
final customerOrderProvider =
    FutureProvider.autoDispose.family<CustomerOrder, String>(
  (ref, orderId) async {
    final res =
        await ref.watch(ordersRepositoryProvider).getCustomerOrder(orderId);
    final order = res.fold(
      (f) => throw UserMessageException(f.message),
      (o) => o,
    );
    final enriched = await _enrichCustomerOrders(ref, [order]);
    return enriched.first;
  },
);

Future<List<CustomerOrder>> _enrichCustomerOrders(
  Ref ref,
  List<CustomerOrder> orders,
) async {
  final restaurantIds = orders
      .where((o) => o.restaurantId.isNotEmpty && o.restaurantName.isEmpty)
      .map((o) => o.restaurantId)
      .toSet();
  if (restaurantIds.isEmpty) return orders;

  final restaurants = await Future.wait(
    restaurantIds.map((id) => _fetchRestaurant(ref, id)),
  );
  final byId = <String, RestaurantSummary>{
    for (final r in restaurants.whereType<RestaurantSummary>()) r.id: r,
  };

  return orders
      .map((order) {
        final restaurant = byId[order.restaurantId];
        if (restaurant == null) return order;

        final etaMinutes = restaurant.estimatedDeliveryMinutesMax ??
            restaurant.estimatedDeliveryMinutes + 10;

        return CustomerOrder(
          id: order.id,
          orderNumber: order.orderNumber,
          restaurantId: order.restaurantId,
          restaurantName: restaurant.name,
          status: order.status,
          total: Money(
            amount: order.total.amount,
            currencyCode: restaurant.currencyCode,
          ),
          placedAt: order.placedAt,
          estimatedArrivalAt: order.placedAt.add(
            Duration(minutes: etaMinutes),
          ),
          driverName: order.driverName,
          driverRating: order.driverRating,
        );
      })
      .toList();
}

Future<RestaurantSummary?> _fetchRestaurant(Ref ref, String id) async {
  final res = await ref.read(restaurantRepositoryProvider).getRestaurant(id);
  return res.fold((_) => null, (r) => r);
}

List<CustomerOrder> activeCustomerOrders(List<CustomerOrder> orders) =>
    orders.where((o) => o.status.isActiveCustomerView).toList()
      ..sort((a, b) => b.placedAt.compareTo(a.placedAt));

List<CustomerOrder> completedCustomerOrders(List<CustomerOrder> orders) =>
    orders.where((o) => !o.status.isActiveCustomerView).toList()
      ..sort((a, b) => b.placedAt.compareTo(a.placedAt));
