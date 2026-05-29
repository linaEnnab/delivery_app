import 'package:delivery_app/shared/domain/enums/payment_method.dart';

/// Input for creating a PSP-backed payment session at checkout.
class CreatePaymentSessionParams {
  const CreatePaymentSessionParams({
    required this.orderId,
    required this.paymentMethod,
    this.returnUrl,
  });

  final String orderId;
  final PaymentMethod paymentMethod;
  final String? returnUrl;
}
