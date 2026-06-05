import 'package:delivery_app/features/cart/presentation/utils/cart_totals.dart';
import 'package:delivery_app/features/checkout/domain/entities/create_order_params.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/delivery_address.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

final _guidPattern = RegExp(
  r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
);

bool isApiGuid(String value) => _guidPattern.hasMatch(value.trim());

/// Line items the API can accept (real catalog products only; wheel demo gifts are local).
List<CartItem> apiOrderableCartItems(List<CartItem> items) =>
    items.where((item) => isApiGuid(item.productId)).toList(growable: false);

CreateOrderParams mapCartToCreateOrderParams({
  required Cart cart,
  required DeliveryAddress address,
  required CartTotals totals,
}) {
  if (!isApiGuid(address.id)) {
    throw FormatException(
      'Delivery address id must be a GUID before placing an order.',
    );
  }
  if (!isApiGuid(cart.restaurantId)) {
    throw FormatException(
      'Restaurant id must be a GUID before placing an order.',
    );
  }

  final orderableItems = apiOrderableCartItems(cart.items);
  if (orderableItems.isEmpty) {
    throw const FormatException(
      'Cart has no orderable items. Add menu products from a restaurant.',
    );
  }

  final currency = orderableItems.first.unitPrice.currencyCode;
  final zero = Money(amount: 0, currencyCode: currency);

  return CreateOrderParams(
    restaurantId: cart.restaurantId,
    deliveryAddressId: address.id,
    lineItems: [
      for (final item in orderableItems)
        CreateOrderLineItem(
          productId: item.productId,
          productNameSnapshot: item.productName,
          quantity: item.quantity,
          unitPrice: item.unitPrice,
        ),
    ],
    deliveryFee: totals.deliveryFee,
    taxTotal: zero,
    serviceFee: zero,
    discountTotal: totals.discount.isZero ? null : totals.discount,
    customerNotes: address.deliveryNotes,
  );
}
