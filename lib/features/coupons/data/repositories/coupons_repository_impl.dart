import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/coupons/data/datasources/coupons_remote_datasource.dart';
import 'package:delivery_app/features/coupons/domain/repositories/coupons_repository.dart';
import 'package:delivery_app/features/coupons/domain/validate_coupon_params.dart';
import 'package:delivery_app/shared/domain/entities/coupon.dart';
import 'package:delivery_app/shared/domain/entities/customer_coupon.dart';
import 'package:fpdart/fpdart.dart';

class CouponsRepositoryImpl implements CouponsRepository {
  CouponsRepositoryImpl({
    required CouponsRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final CouponsRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<List<CustomerCoupon>>> listMyCoupons() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<Coupon>> validateCoupon(ValidateCouponParams params) async {
    return Left(
      Failure.unexpected(message: 'Not implemented: ${params.code}'),
    );
  }
}
