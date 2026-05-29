import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_dto.freezed.dart';
part 'money_dto.g.dart';

@freezed
class MoneyDto with _$MoneyDto {
  const MoneyDto._();

  const factory MoneyDto({
    required double amount,
    @Default('AED') String currencyCode,
  }) = _MoneyDto;

  factory MoneyDto.fromJson(Map<String, dynamic> json) =>
      _$MoneyDtoFromJson(json);

  Money toDomain() => Money(amount: amount, currencyCode: currencyCode);

  factory MoneyDto.fromDomain(Money money) =>
      MoneyDto(amount: money.amount, currencyCode: money.currencyCode);
}
