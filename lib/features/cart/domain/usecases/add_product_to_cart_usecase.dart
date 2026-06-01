import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/cart/domain/repositories/cart_repository.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';

class AddProductToCartUseCase {
  const AddProductToCartUseCase(this._repository);

  final CartRepository _repository;

  Result<Cart> call(Product product) => _repository.addProduct(product);
}
