import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Domain input for [POST /api/Order] ([CreateOrderRequest]).
final class CreateOrderParams {
  const CreateOrderParams({
    required this.restaurantId,
    required this.deliveryAddressId,
    required this.lineItems,
    required this.deliveryFee,
    required this.taxTotal,
    required this.serviceFee,
    this.discountTotal,
    this.customerNotes,
  });

  final String restaurantId;
  final String deliveryAddressId;
  final List<CreateOrderLineItem> lineItems;
  final Money deliveryFee;
  final Money taxTotal;
  final Money serviceFee;
  final Money? discountTotal;
  final String? customerNotes;
}

final class CreateOrderLineItem {
  const CreateOrderLineItem({
    required this.productId,
    required this.productNameSnapshot,
    required this.quantity,
    required this.unitPrice,
  });

  final String productId;
  final String productNameSnapshot;
  final int quantity;
  final Money unitPrice;
}
