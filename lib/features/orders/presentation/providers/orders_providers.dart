import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/orders/data/datasources/orders_remote_datasource.dart';
import 'package:delivery_app/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:delivery_app/features/orders/domain/repositories/orders_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ordersRemoteDataSourceProvider = Provider<OrdersRemoteDataSource>(
  (ref) => OrdersRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final ordersRepositoryProvider = Provider<OrdersRepository>(
  (ref) => OrdersRepositoryImpl(
    remoteDataSource: ref.watch(ordersRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
