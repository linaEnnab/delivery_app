// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_pricing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPricingImpl _$$OrderPricingImplFromJson(Map<String, dynamic> json) =>
    _$OrderPricingImpl(
      subtotal: Money.fromJson(json['subtotal'] as Map<String, dynamic>),
      deliveryFee: Money.fromJson(json['delivery_fee'] as Map<String, dynamic>),
      serviceFee: json['service_fee'] == null
          ? Money.zero
          : Money.fromJson(json['service_fee'] as Map<String, dynamic>),
      discountTotal: json['discount_total'] == null
          ? Money.zero
          : Money.fromJson(json['discount_total'] as Map<String, dynamic>),
      couponDiscount: json['coupon_discount'] == null
          ? Money.zero
          : Money.fromJson(json['coupon_discount'] as Map<String, dynamic>),
      freeDeliverySavings: json['free_delivery_savings'] == null
          ? Money.zero
          : Money.fromJson(
              json['free_delivery_savings'] as Map<String, dynamic>,
            ),
      taxAmount: Money.fromJson(json['tax_amount'] as Map<String, dynamic>),
      grandTotal: Money.fromJson(json['grand_total'] as Map<String, dynamic>),
      commission: CommissionBreakdown.fromJson(
        json['commission'] as Map<String, dynamic>,
      ),
      appliedCouponCode: json['applied_coupon_code'] as String?,
      promotionId: json['promotion_id'] as String?,
    );

Map<String, dynamic> _$$OrderPricingImplToJson(_$OrderPricingImpl instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal.toJson(),
      'delivery_fee': instance.deliveryFee.toJson(),
      'service_fee': instance.serviceFee.toJson(),
      'discount_total': instance.discountTotal.toJson(),
      'coupon_discount': instance.couponDiscount.toJson(),
      'free_delivery_savings': instance.freeDeliverySavings.toJson(),
      'tax_amount': instance.taxAmount.toJson(),
      'grand_total': instance.grandTotal.toJson(),
      'commission': instance.commission.toJson(),
      if (instance.appliedCouponCode case final value?)
        'applied_coupon_code': value,
      if (instance.promotionId case final value?) 'promotion_id': value,
    };
