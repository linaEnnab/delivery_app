// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletBalanceImpl _$$WalletBalanceImplFromJson(Map<String, dynamic> json) =>
    _$WalletBalanceImpl(
      available: Money.fromJson(json['available'] as Map<String, dynamic>),
      pending: json['pending'] == null
          ? Money.zero
          : Money.fromJson(json['pending'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletBalanceImplToJson(_$WalletBalanceImpl instance) =>
    <String, dynamic>{
      'available': instance.available.toJson(),
      'pending': instance.pending.toJson(),
    };

_$WalletTransactionImpl _$$WalletTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$WalletTransactionImpl(
  id: json['id'] as String,
  description: json['description'] as String,
  amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['created_at'] as String),
  orderId: json['order_id'] as String?,
);

Map<String, dynamic> _$$WalletTransactionImplToJson(
  _$WalletTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'amount': instance.amount.toJson(),
  'created_at': instance.createdAt.toIso8601String(),
  if (instance.orderId case final value?) 'order_id': value,
};
