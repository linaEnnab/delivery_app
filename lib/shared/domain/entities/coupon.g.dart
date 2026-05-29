// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
  id: json['id'] as String,
  code: json['code'] as String,
  discountType: $enumDecode(_$DiscountTypeEnumMap, json['discount_type']),
  scope: $enumDecode(_$PromotionScopeEnumMap, json['scope']),
  percentageOff: (json['percentage_off'] as num?)?.toDouble(),
  fixedAmountOff: json['fixed_amount_off'] == null
      ? null
      : Money.fromJson(json['fixed_amount_off'] as Map<String, dynamic>),
  minimumOrderAmount: json['minimum_order_amount'] == null
      ? null
      : Money.fromJson(json['minimum_order_amount'] as Map<String, dynamic>),
  maximumDiscount: json['maximum_discount'] == null
      ? null
      : Money.fromJson(json['maximum_discount'] as Map<String, dynamic>),
  validFrom: json['valid_from'] == null
      ? null
      : DateTime.parse(json['valid_from'] as String),
  validUntil: json['valid_until'] == null
      ? null
      : DateTime.parse(json['valid_until'] as String),
  restaurantId: json['restaurant_id'] as String?,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount_type': _$DiscountTypeEnumMap[instance.discountType]!,
      'scope': _$PromotionScopeEnumMap[instance.scope]!,
      if (instance.percentageOff case final value?) 'percentage_off': value,
      if (instance.fixedAmountOff?.toJson() case final value?)
        'fixed_amount_off': value,
      if (instance.minimumOrderAmount?.toJson() case final value?)
        'minimum_order_amount': value,
      if (instance.maximumDiscount?.toJson() case final value?)
        'maximum_discount': value,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.validUntil?.toIso8601String() case final value?)
        'valid_until': value,
      if (instance.restaurantId case final value?) 'restaurant_id': value,
      'is_active': instance.isActive,
    };

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'percentage',
  DiscountType.fixedAmount: 'fixed_amount',
  DiscountType.freeDelivery: 'free_delivery',
  DiscountType.buyOneGetOne: 'buy_one_get_one',
};

const _$PromotionScopeEnumMap = {
  PromotionScope.platform: 'platform',
  PromotionScope.restaurant: 'restaurant',
  PromotionScope.driver: 'driver',
};
