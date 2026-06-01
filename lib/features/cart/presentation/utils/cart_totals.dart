import 'package:delivery_app/features/cart/data/mock_cart_checkout_constants.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Line items + mock delivery/discount for the cart summary card.
final class CartTotals {
  const CartTotals({
    required this.subtotal,
    required this.deliveryFee,
    required this.discount,
    required this.finalTotal,
  });

  final Money subtotal;
  final Money deliveryFee;
  final Money discount;
  final Money finalTotal;
}

CartTotals computeCartTotals(List<CartItem> items) {
  if (items.isEmpty) {
    const z = Money(amount: 0, currencyCode: 'ILS');
    return const CartTotals(
      subtotal: z,
      deliveryFee: z,
      discount: z,
      finalTotal: z,
    );
  }

  final code = items.first.lineTotal.currencyCode;
  var subtotal = Money(amount: 0, currencyCode: code);
  for (final item in items) {
    subtotal = subtotal + item.lineTotal;
  }

  final delivery = Money(
    amount: MockCartCheckoutConstants.deliveryFee.amount,
    currencyCode: code,
  );
  final discount = Money(
    amount: MockCartCheckoutConstants.discount.amount,
    currencyCode: code,
  );

  var total = subtotal + delivery - discount;
  if (total.amount < 0) {
    total = Money(amount: 0, currencyCode: code);
  }

  return CartTotals(
    subtotal: subtotal,
    deliveryFee: delivery,
    discount: discount,
    finalTotal: total,
  );
}
