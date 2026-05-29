// ignore_for_file: unused_field
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/order_tracking/data/datasources/order_tracking_remote_datasource.dart';
import 'package:delivery_app/features/order_tracking/domain/repositories/order_tracking_repository.dart';
import 'package:delivery_app/shared/domain/entities/order_tracking.dart';
import 'package:fpdart/fpdart.dart';

class OrderTrackingRepositoryImpl implements OrderTrackingRepository {
  OrderTrackingRepositoryImpl({
    required OrderTrackingRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final OrderTrackingRemoteDataSource _remote;
  final NetworkInfo _networkInfo;

  @override
  Future<Result<OrderTracking>> getTracking(String orderId) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
