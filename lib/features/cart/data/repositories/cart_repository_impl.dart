import 'package:delivery_app/features/cart/data/datasources/cart_mock_local_datasource.dart';
import 'package:delivery_app/features/cart/domain/repositories/cart_repository.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';

class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl({required CartMockLocalDataSource localDataSource})
      : _local = localDataSource;

  final CartMockLocalDataSource _local;

  @override
  Result<Cart> getCart() => _local.getCart();

  @override
  Result<Cart> addProduct(Product product) => _local.addProduct(product);

  @override
  Result<Cart> increaseItemQuantity(String cartItemId) =>
      _local.increaseItemQuantity(cartItemId);

  @override
  Result<Cart> decreaseItemQuantity(String cartItemId) =>
      _local.decreaseItemQuantity(cartItemId);

  @override
  Result<Cart> removeItem(String cartItemId) => _local.removeItem(cartItemId);

  @override
  Result<Cart> clear() => _local.clear();
}
