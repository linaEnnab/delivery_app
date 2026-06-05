import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/checkout/data/datasources/checkout_remote_datasource.dart';
import 'package:delivery_app/features/checkout/domain/entities/create_order_params.dart';
import 'package:delivery_app/features/checkout/domain/entities/placed_order.dart';
import 'package:delivery_app/features/checkout/domain/repositories/checkout_repository.dart';
import 'package:delivery_app/features/restaurant/data/utils/dio_failure_mapper.dart';
import 'package:fpdart/fpdart.dart';

class CheckoutRepositoryImpl implements CheckoutRepository {
  CheckoutRepositoryImpl({
    required CheckoutRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final CheckoutRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<PlacedOrder>> placeOrder(CreateOrderParams params) async {
    try {
      final placed = await _remote.createOrder(params);
      return Right(placed);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }
}
