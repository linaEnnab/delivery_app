import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/restaurant/data/datasources/restaurant_remote_datasource.dart';
import 'package:delivery_app/features/restaurant/data/repositories/restaurant_repository_impl.dart';
import 'package:delivery_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final restaurantRemoteDataSourceProvider = Provider<RestaurantRemoteDataSource>(
  (ref) => RestaurantRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final restaurantRepositoryProvider = Provider<RestaurantRepository>(
  (ref) => RestaurantRepositoryImpl(
    remoteDataSource: ref.watch(restaurantRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
