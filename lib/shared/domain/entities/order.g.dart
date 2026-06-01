// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
  id: json['id'] as String,
  orderNumber: json['order_number'] as String,
  restaurant: OrderRestaurantDetails.fromJson(
    json['restaurant'] as Map<String, dynamic>,
  ),
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  pricing: OrderPricing.fromJson(json['pricing'] as Map<String, dynamic>),
  deliveryAddress: DeliveryAddress.fromJson(
    json['delivery_address'] as Map<String, dynamic>,
  ),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['payment_method']),
  customerContact: json['customer_contact'] == null
      ? null
      : CustomerDeliveryContact.fromJson(
          json['customer_contact'] as Map<String, dynamic>,
        ),
  driver: json['driver'] == null
      ? null
      : DriverSummary.fromJson(json['driver'] as Map<String, dynamic>),
  loyaltyPointsEarned: (json['loyalty_points_earned'] as num?)?.toInt() ?? 0,
  placedAt: json['placed_at'] == null
      ? null
      : DateTime.parse(json['placed_at'] as String),
  deliveredAt: json['delivered_at'] == null
      ? null
      : DateTime.parse(json['delivered_at'] as String),
  isReviewSubmitted: json['is_review_submitted'] as bool? ?? false,
);

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'restaurant': instance.restaurant.toJson(),
      'status': _$OrderStatusEnumMap[instance.status]!,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pricing': instance.pricing.toJson(),
      'delivery_address': instance.deliveryAddress.toJson(),
      'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      if (instance.customerContact?.toJson() case final value?)
        'customer_contact': value,
      if (instance.driver?.toJson() case final value?) 'driver': value,
      'loyalty_points_earned': instance.loyaltyPointsEarned,
      if (instance.placedAt?.toIso8601String() case final value?)
        'placed_at': value,
      if (instance.deliveredAt?.toIso8601String() case final value?)
        'delivered_at': value,
      'is_review_submitted': instance.isReviewSubmitted,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.restaurantAccepted: 'restaurant_accepted',
  OrderStatus.preparing: 'preparing',
  OrderStatus.readyForPickup: 'ready_for_pickup',
  OrderStatus.driverAssigned: 'driver_assigned',
  OrderStatus.pickedUp: 'picked_up',
  OrderStatus.onTheWay: 'on_the_way',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'cash_on_delivery',
  PaymentMethod.creditCard: 'credit_card',
  PaymentMethod.debitCard: 'debit_card',
  PaymentMethod.wallet: 'wallet',
  PaymentMethod.applePay: 'apple_pay',
  PaymentMethod.googlePay: 'google_pay',
};
