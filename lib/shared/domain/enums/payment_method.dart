import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum PaymentMethod {
  cashOnDelivery,
  creditCard,
  debitCard,
  wallet,
  applePay,
  googlePay,
}
