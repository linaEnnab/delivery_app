import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/features/restaurant/data/datasources/product_remote_datasource.dart';
import 'package:delivery_app/features/restaurant/data/datasources/restaurant_remote_datasource.dart';
import 'package:delivery_app/features/restaurant/data/repositories/product_repository_impl.dart';
import 'package:delivery_app/features/restaurant/data/repositories/restaurant_repository_impl.dart';
import 'package:delivery_app/features/restaurant/domain/repositories/product_repository.dart';
import 'package:delivery_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final restaurantRemoteDataSourceProvider = Provider<RestaurantRemoteDataSource>(
  (ref) => RestaurantRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final productRemoteDataSourceProvider = Provider<ProductRemoteDataSource>(
  (ref) => ProductRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final restaurantRepositoryProvider = Provider<RestaurantRepository>(
  (ref) => RestaurantRepositoryImpl(
    remoteDataSource: ref.watch(restaurantRemoteDataSourceProvider),
  ),
);

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductRepositoryImpl(
    remoteDataSource: ref.watch(productRemoteDataSourceProvider),
  ),
);

/// All restaurants from [GET /api/restaurant].
final restaurantsListProvider =
    FutureProvider.autoDispose<List<RestaurantSummary>>((ref) async {
  final res = await ref.watch(restaurantRepositoryProvider).listRestaurants();
  return res.fold(
    (f) => throw UserMessageException(f.message),
    (list) => list,
  );
});

/// Single restaurant from [GET /api/restaurant/{id}].
final restaurantDetailProvider =
    FutureProvider.autoDispose.family<RestaurantSummary, String>(
  (ref, id) async {
    final res = await ref.watch(restaurantRepositoryProvider).getRestaurant(id);
    return res.fold(
      (f) => throw UserMessageException(f.message),
      (r) => r,
    );
  },
);

/// Menu products; waits for [restaurantDetailProvider] so currency matches.
final restaurantProductsProvider =
    FutureProvider.autoDispose.family<List<Product>, String>(
  (ref, restaurantId) async {
    final restaurant =
        await ref.watch(restaurantDetailProvider(restaurantId).future);
    final res = await ref.read(productRepositoryProvider).listByRestaurant(
          restaurantId: restaurantId,
          defaultCurrencyCode: restaurant.currencyCode,
        );
    return res.fold(
      (f) => throw UserMessageException(f.message),
      (list) => list,
    );
  },
);
