import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/checkout/domain/entities/create_order_params.dart';
import 'package:delivery_app/features/checkout/domain/entities/placed_order.dart';

/// Checkout and place order.
abstract interface class CheckoutRepository {
  Future<Result<PlacedOrder>> placeOrder(CreateOrderParams params);
}
