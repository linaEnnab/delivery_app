// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerCouponImpl _$$CustomerCouponImplFromJson(Map<String, dynamic> json) =>
    _$CustomerCouponImpl(
      issuedId: json['issued_id'] as String,
      coupon: Coupon.fromJson(json['coupon'] as Map<String, dynamic>),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      isRedeemed: json['is_redeemed'] as bool? ?? false,
    );

Map<String, dynamic> _$$CustomerCouponImplToJson(
  _$CustomerCouponImpl instance,
) => <String, dynamic>{
  'issued_id': instance.issuedId,
  'coupon': instance.coupon.toJson(),
  if (instance.expiresAt?.toIso8601String() case final value?)
    'expires_at': value,
  'is_redeemed': instance.isRedeemed,
};
