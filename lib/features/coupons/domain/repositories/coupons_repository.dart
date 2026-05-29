import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/coupons/domain/validate_coupon_params.dart';
import 'package:delivery_app/shared/domain/entities/coupon.dart';
import 'package:delivery_app/shared/domain/entities/customer_coupon.dart';

abstract interface class CouponsRepository {
  Future<Result<List<CustomerCoupon>>> listMyCoupons();

  Future<Result<Coupon>> validateCoupon(ValidateCouponParams params);
}
