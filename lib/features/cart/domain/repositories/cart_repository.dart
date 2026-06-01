import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';

/// Shopping cart — customer session aggregate (mock/local implementation for now).
abstract interface class CartRepository {
  Result<Cart> getCart();

  Result<Cart> addProduct(Product product);

  Result<Cart> increaseItemQuantity(String cartItemId);

  Result<Cart> decreaseItemQuantity(String cartItemId);

  Result<Cart> removeItem(String cartItemId);

  Result<Cart> clear();
}
