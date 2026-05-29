import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/order_tracking/data/datasources/order_tracking_remote_datasource.dart';
import 'package:delivery_app/features/order_tracking/data/repositories/order_tracking_repository_impl.dart';
import 'package:delivery_app/features/order_tracking/domain/repositories/order_tracking_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderTrackingRemoteDataSourceProvider =
    Provider<OrderTrackingRemoteDataSource>(
  (ref) => OrderTrackingRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final orderTrackingRepositoryProvider = Provider<OrderTrackingRepository>(
  (ref) => OrderTrackingRepositoryImpl(
    remoteDataSource: ref.watch(orderTrackingRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
