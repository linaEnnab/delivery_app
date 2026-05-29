// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommissionBreakdownImpl _$$CommissionBreakdownImplFromJson(
  Map<String, dynamic> json,
) => _$CommissionBreakdownImpl(
  platformCommission: Money.fromJson(
    json['platform_commission'] as Map<String, dynamic>,
  ),
  restaurantEarnings: Money.fromJson(
    json['restaurant_earnings'] as Map<String, dynamic>,
  ),
  driverEarnings: Money.fromJson(
    json['driver_earnings'] as Map<String, dynamic>,
  ),
  deliveryFee: Money.fromJson(json['delivery_fee'] as Map<String, dynamic>),
  discountAbsorbedByPlatform: json['discount_absorbed_by_platform'] == null
      ? Money.zero
      : Money.fromJson(
          json['discount_absorbed_by_platform'] as Map<String, dynamic>,
        ),
  discountAbsorbedByRestaurant: json['discount_absorbed_by_restaurant'] == null
      ? Money.zero
      : Money.fromJson(
          json['discount_absorbed_by_restaurant'] as Map<String, dynamic>,
        ),
  taxAmount: json['tax_amount'] == null
      ? Money.zero
      : Money.fromJson(json['tax_amount'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CommissionBreakdownImplToJson(
  _$CommissionBreakdownImpl instance,
) => <String, dynamic>{
  'platform_commission': instance.platformCommission.toJson(),
  'restaurant_earnings': instance.restaurantEarnings.toJson(),
  'driver_earnings': instance.driverEarnings.toJson(),
  'delivery_fee': instance.deliveryFee.toJson(),
  'discount_absorbed_by_platform': instance.discountAbsorbedByPlatform.toJson(),
  'discount_absorbed_by_restaurant': instance.discountAbsorbedByRestaurant
      .toJson(),
  'tax_amount': instance.taxAmount.toJson(),
};
