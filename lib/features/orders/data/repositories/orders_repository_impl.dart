import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/orders/data/datasources/orders_remote_datasource.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/features/orders/domain/repositories/orders_repository.dart';
import 'package:delivery_app/features/restaurant/data/utils/dio_failure_mapper.dart';
import 'package:fpdart/fpdart.dart';

class OrdersRepositoryImpl implements OrdersRepository {
  OrdersRepositoryImpl({
    required OrdersRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final OrdersRemoteDataSource _remote;

  @override
  Future<Result<List<CustomerOrder>>> listCustomerOrders({
    OrderStatus? statusFilter,
  }) async {
    try {
      final list = await _remote.fetchCustomerOrders(statusFilter: statusFilter);
      return Right(list);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }

  @override
  Future<Result<CustomerOrder>> getCustomerOrder(String orderId) async {
    try {
      final order = await _remote.fetchOrderById(orderId);
      return Right(order);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }
}
