import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/checkout/domain/entities/create_order_params.dart';
import 'package:delivery_app/features/checkout/domain/entities/placed_order.dart';
import 'package:delivery_app/features/checkout/domain/repositories/checkout_repository.dart';

class PlaceOrderUseCase {
  const PlaceOrderUseCase(this._repository);

  final CheckoutRepository _repository;

  Future<Result<PlacedOrder>> call(CreateOrderParams params) =>
      _repository.placeOrder(params);
}
