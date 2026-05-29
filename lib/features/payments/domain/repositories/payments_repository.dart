import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/payments/domain/create_payment_session_params.dart';
import 'package:delivery_app/shared/domain/entities/payment_session.dart';

abstract interface class PaymentsRepository {
  Future<Result<PaymentSession>> createSession(
    CreatePaymentSessionParams params,
  );

  Future<Result<PaymentSession>> getSession(String sessionId);
}
