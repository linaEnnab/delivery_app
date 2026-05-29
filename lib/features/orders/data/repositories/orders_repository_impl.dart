// ignore_for_file: unused_field
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/orders/data/datasources/orders_remote_datasource.dart';
import 'package:delivery_app/features/orders/domain/repositories/orders_repository.dart';
import 'package:delivery_app/shared/domain/entities/order.dart';
import 'package:delivery_app/shared/domain/entities/pagination.dart';
import 'package:fpdart/fpdart.dart' hide Order;

class OrdersRepositoryImpl implements OrdersRepository {
  OrdersRepositoryImpl({
    required OrdersRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final OrdersRemoteDataSource _remote;
  final NetworkInfo _networkInfo;

  @override
  Future<Result<PaginatedResult<Order>>> listOrders({
    int page = 1,
    int pageSize = 20,
  }) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<Order>> getOrder(String orderId) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
