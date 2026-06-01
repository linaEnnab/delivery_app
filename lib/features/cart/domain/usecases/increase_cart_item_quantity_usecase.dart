import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/cart/domain/repositories/cart_repository.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';

class IncreaseCartItemQuantityUseCase {
  const IncreaseCartItemQuantityUseCase(this._repository);

  final CartRepository _repository;

  Result<Cart> call(String cartItemId) =>
      _repository.increaseItemQuantity(cartItemId);
}
