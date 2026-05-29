import 'package:delivery_app/shared/domain/entities/coupon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_coupon.freezed.dart';
part 'customer_coupon.g.dart';

/// Coupon issued to a customer (wallet / saved offers).
@freezed
class CustomerCoupon with _$CustomerCoupon {
  const factory CustomerCoupon({
    required String issuedId,
    required Coupon coupon,
    DateTime? expiresAt,
    @Default(false) bool isRedeemed,
  }) = _CustomerCoupon;

  factory CustomerCoupon.fromJson(Map<String, dynamic> json) =>
      _$CustomerCouponFromJson(json);
}
