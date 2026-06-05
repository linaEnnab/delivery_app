import 'dart:async';

import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/features/checkout/domain/entities/order_confirmation.dart';
import 'package:delivery_app/features/checkout/presentation/providers/checkout_providers.dart';
import 'package:delivery_app/features/checkout/presentation/providers/placed_order_provider.dart';
import 'package:delivery_app/features/checkout/presentation/utils/create_order_params_mapper.dart';
import 'package:delivery_app/features/cart/presentation/utils/cart_totals.dart';
import 'package:delivery_app/features/restaurant/presentation/providers/restaurant_providers.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/delivery_address.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final placeOrderControllerProvider =
    AutoDisposeAsyncNotifierProvider<PlaceOrderController, void>(
  PlaceOrderController.new,
);

class PlaceOrderController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> submit({
    required Cart cart,
    required DeliveryAddress address,
    required CartTotals totals,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = mapCartToCreateOrderParams(
        cart: cart,
        address: address,
        totals: totals,
      );
      final result = await ref.read(placeOrderUseCaseProvider)(params);
      final placed = result.fold(
        (failure) => throw _failureToException(failure),
        (order) => order,
      );

      final restaurantName = await _resolveRestaurantName(cart.restaurantId);
      final eta = await _resolveEta(cart.restaurantId);

      ref.read(placedOrderProvider.notifier).set(
            OrderConfirmation(
              orderId: placed.orderId,
              orderNumber: _formatOrderNumber(placed.orderId),
              restaurantName: restaurantName,
              etaMinMinutes: eta.$1,
              etaMaxMinutes: eta.$2,
            ),
          );
    });
  }

  Future<String> _resolveRestaurantName(String restaurantId) async {
    if (restaurantId.isEmpty) return '';
    final res =
        await ref.read(restaurantRepositoryProvider).getRestaurant(restaurantId);
    return res.fold((_) => '', (r) => r.name);
  }

  Future<(int, int)> _resolveEta(String restaurantId) async {
    if (restaurantId.isEmpty) return (25, 35);
    final res =
        await ref.read(restaurantRepositoryProvider).getRestaurant(restaurantId);
    return res.fold(
      (_) => (25, 35),
      (r) => (
        r.estimatedDeliveryMinutes,
        r.estimatedDeliveryMinutesMax ?? r.estimatedDeliveryMinutes + 10,
      ),
    );
  }

  String _formatOrderNumber(String orderId) {
    final compact = orderId.replaceAll('-', '');
    if (compact.length >= 8) {
      return compact.substring(0, 8).toUpperCase();
    }
    return orderId.toUpperCase();
  }
}

Exception _failureToException(Failure failure) {
  return failure.when(
    network: (message) => Exception(message),
    auth: (message) => Exception(message),
    validation: (message, fieldErrors) =>
        Exception(_formatValidationMessage(message, fieldErrors)),
    notFound: (message) => Exception(message),
    businessRule: (message) => Exception(message),
    server: (message, code, statusCode) => Exception(message),
    cache: (message) => Exception(message),
    unexpected: (message) => Exception(message),
  );
}

String _formatValidationMessage(
  String message,
  Map<String, List<String>>? fieldErrors,
) {
  if (message.trim().isNotEmpty &&
      message.trim().toLowerCase() !=
          'one or more validation errors occurred.') {
    return message;
  }
  final details = fieldErrors?.values
          .expand((messages) => messages)
          .map((m) => m.trim())
          .where((m) => m.isNotEmpty)
          .toList() ??
      const [];
  if (details.isEmpty) return message;
  return details.join('\n');
}
