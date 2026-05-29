import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.freezed.dart';
part 'money.g.dart';

/// Monetary value with currency for accounting-safe calculations.
@freezed
class Money with _$Money {
  const Money._();

  const factory Money({
    required double amount,
    @Default('AED') String currencyCode,
  }) = _Money;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  static const zero = Money(amount: 0);

  Money operator +(Money other) {
    assert(currencyCode == other.currencyCode, 'Currency mismatch');
    return Money(amount: amount + other.amount, currencyCode: currencyCode);
  }

  Money operator -(Money other) {
    assert(currencyCode == other.currencyCode, 'Currency mismatch');
    return Money(amount: amount - other.amount, currencyCode: currencyCode);
  }

  bool get isPositive => amount > 0;
  bool get isZero => amount == 0;
}
