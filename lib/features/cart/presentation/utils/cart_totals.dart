import 'package:delivery_app/features/cart/data/mock_cart_checkout_constants.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind_helpers.dart';
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

CartTotals computeCartTotals(
  List<CartItem> items, {
  WheelRewardKind? appliedCheckoutReward,
}) {
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

  var delivery = Money(
    amount: MockCartCheckoutConstants.deliveryFee.amount,
    currencyCode: code,
  );
  if (appliedCheckoutReward?.waivesDeliveryFee ?? false) {
    delivery = Money(amount: 0, currencyCode: code);
  }

  var discount = Money(
    amount: MockCartCheckoutConstants.discount.amount,
    currencyCode: code,
  );

  if (appliedCheckoutReward?.appliesMealHalfOff ?? false) {
    final half = (subtotal.amount * 0.5 * 100).round() / 100;
    discount = discount + Money(amount: half, currencyCode: code);
  }

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
