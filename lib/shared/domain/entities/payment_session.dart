import 'package:delivery_app/shared/domain/enums/payment_method.dart';
import 'package:delivery_app/shared/domain/enums/payment_session_status.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_session.freezed.dart';
part 'payment_session.g.dart';

/// Server-driven payment session for PSP checkout (e.g. Stripe-style client secret).
@freezed
class PaymentSession with _$PaymentSession {
  const factory PaymentSession({
    required String id,
    required PaymentSessionStatus status,
    required Money amount,
    required PaymentMethod paymentMethod,
    String? orderId,
    String? clientSecret,
    String? redirectUrl,
    DateTime? expiresAt,
  }) = _PaymentSession;

  factory PaymentSession.fromJson(Map<String, dynamic> json) =>
      _$PaymentSessionFromJson(json);
}
