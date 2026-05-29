// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyImpl _$$MoneyImplFromJson(Map<String, dynamic> json) => _$MoneyImpl(
  amount: (json['amount'] as num).toDouble(),
  currencyCode: json['currency_code'] as String? ?? 'AED',
);

Map<String, dynamic> _$$MoneyImplToJson(_$MoneyImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
    };
