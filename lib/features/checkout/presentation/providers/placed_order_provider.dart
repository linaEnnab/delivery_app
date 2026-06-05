import 'package:delivery_app/features/checkout/domain/entities/order_confirmation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Last successfully placed order shown on the confirmation screen.
class PlacedOrderNotifier extends Notifier<OrderConfirmation?> {
  @override
  OrderConfirmation? build() => null;

  void set(OrderConfirmation confirmation) {
    state = confirmation;
  }

  void clear() {
    state = null;
  }
}

final placedOrderProvider =
    NotifierProvider<PlacedOrderNotifier, OrderConfirmation?>(
  PlacedOrderNotifier.new,
);
