// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentSessionImpl _$$PaymentSessionImplFromJson(Map<String, dynamic> json) =>
    _$PaymentSessionImpl(
      id: json['id'] as String,
      status: $enumDecode(_$PaymentSessionStatusEnumMap, json['status']),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      paymentMethod: $enumDecode(
        _$PaymentMethodEnumMap,
        json['payment_method'],
      ),
      orderId: json['order_id'] as String?,
      clientSecret: json['client_secret'] as String?,
      redirectUrl: json['redirect_url'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$PaymentSessionImplToJson(
  _$PaymentSessionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': _$PaymentSessionStatusEnumMap[instance.status]!,
  'amount': instance.amount.toJson(),
  'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  if (instance.orderId case final value?) 'order_id': value,
  if (instance.clientSecret case final value?) 'client_secret': value,
  if (instance.redirectUrl case final value?) 'redirect_url': value,
  if (instance.expiresAt?.toIso8601String() case final value?)
    'expires_at': value,
};

const _$PaymentSessionStatusEnumMap = {
  PaymentSessionStatus.pending: 'pending',
  PaymentSessionStatus.requiresAction: 'requires_action',
  PaymentSessionStatus.processing: 'processing',
  PaymentSessionStatus.succeeded: 'succeeded',
  PaymentSessionStatus.failed: 'failed',
  PaymentSessionStatus.cancelled: 'cancelled',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'cash_on_delivery',
  PaymentMethod.creditCard: 'credit_card',
  PaymentMethod.debitCard: 'debit_card',
  PaymentMethod.wallet: 'wallet',
  PaymentMethod.applePay: 'apple_pay',
  PaymentMethod.googlePay: 'google_pay',
};
