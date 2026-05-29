// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyDtoImpl _$$MoneyDtoImplFromJson(Map<String, dynamic> json) =>
    _$MoneyDtoImpl(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currency_code'] as String? ?? 'AED',
    );

Map<String, dynamic> _$$MoneyDtoImplToJson(_$MoneyDtoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
    };
