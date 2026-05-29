import 'package:delivery_app/shared/domain/enums/discount_type.dart';
import 'package:delivery_app/shared/domain/enums/promotion_scope.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    required String id,
    required String code,
    required DiscountType discountType,
    required PromotionScope scope,
    double? percentageOff,
    Money? fixedAmountOff,
    Money? minimumOrderAmount,
    Money? maximumDiscount,
    DateTime? validFrom,
    DateTime? validUntil,
    String? restaurantId,
    @Default(true) bool isActive,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
