import 'package:delivery_app/features/checkout/domain/entities/create_order_params.dart';
import 'package:delivery_app/features/checkout/domain/entities/placed_order.dart';
import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';

/// Maps [CreateOrderRequest] / create-order response for [POST /api/Order].
final class CreateOrderApiDto {
  CreateOrderApiDto._(this._json);

  final Map<String, dynamic> _json;

  factory CreateOrderApiDto.fromDynamic(dynamic data) {
    if (data is Map<String, dynamic>) {
      return CreateOrderApiDto._(data);
    }
    throw const FormatException('Create order response must be an object');
  }

  PlacedOrder toDomain() {
    final orderId = readString(_json, 'orderId', 'order_id');
    if (orderId.isEmpty) {
      throw const FormatException('Create order response missing orderId');
    }
    return PlacedOrder(orderId: orderId);
  }

  static Map<String, dynamic> requestBodyFrom(CreateOrderParams params) {
    return {
      'restaurantId': params.restaurantId,
      'deliveryAddressId': params.deliveryAddressId,
      'lineItems': [
        for (final item in params.lineItems)
          {
            'productId': item.productId,
            'productNameSnapshot': item.productNameSnapshot,
            'quantity': item.quantity,
            'unitPrice': item.unitPrice.amount,
          },
      ],
      'deliveryFee': params.deliveryFee.amount,
      'taxTotal': params.taxTotal.amount,
      'serviceFee': params.serviceFee.amount,
      if (params.discountTotal != null)
        'discountTotal': params.discountTotal!.amount,
      if (params.customerNotes != null &&
          params.customerNotes!.trim().isNotEmpty)
        'customerNotes': params.customerNotes!.trim(),
    };
  }
}
