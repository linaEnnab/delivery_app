import 'package:delivery_app/features/checkout/data/mock_checkout_data.dart';
import 'package:delivery_app/shared/domain/entities/delivery_address.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Checkout delivery address (mock persistence via in-memory state).
class CheckoutDeliveryAddressNotifier extends Notifier<DeliveryAddress> {
  @override
  DeliveryAddress build() => MockCheckoutData.deliveryAddress;

  void replace(DeliveryAddress next) {
    state = next;
  }
}

final checkoutDeliveryAddressProvider =
    NotifierProvider<CheckoutDeliveryAddressNotifier, DeliveryAddress>(
  CheckoutDeliveryAddressNotifier.new,
);
