import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/cart/data/datasources/cart_mock_local_datasource.dart';
import 'package:delivery_app/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:delivery_app/features/cart/domain/repositories/cart_repository.dart';
import 'package:delivery_app/features/cart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:delivery_app/features/cart/domain/usecases/clear_cart_usecase.dart';
import 'package:delivery_app/features/cart/domain/usecases/decrease_cart_item_quantity_usecase.dart';
import 'package:delivery_app/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:delivery_app/features/cart/domain/usecases/increase_cart_item_quantity_usecase.dart';
import 'package:delivery_app/features/cart/domain/usecases/remove_cart_item_usecase.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Default empty cart aligned with [CartMockLocalDataSource] id.
const Cart kEmptyCart = Cart(id: 'local-cart', restaurantId: '', items: []);

final cartMockLocalDataSourceProvider = Provider<CartMockLocalDataSource>(
  (ref) => CartMockLocalDataSource(),
);

final cartRepositoryProvider = Provider<CartRepository>(
  (ref) => CartRepositoryImpl(
    localDataSource: ref.watch(cartMockLocalDataSourceProvider),
  ),
);

final getCartUseCaseProvider = Provider<GetCartUseCase>(
  (ref) => GetCartUseCase(ref.watch(cartRepositoryProvider)),
);

final addProductToCartUseCaseProvider = Provider<AddProductToCartUseCase>(
  (ref) => AddProductToCartUseCase(ref.watch(cartRepositoryProvider)),
);

final increaseCartItemQuantityUseCaseProvider =
    Provider<IncreaseCartItemQuantityUseCase>(
  (ref) => IncreaseCartItemQuantityUseCase(ref.watch(cartRepositoryProvider)),
);

final decreaseCartItemQuantityUseCaseProvider =
    Provider<DecreaseCartItemQuantityUseCase>(
  (ref) => DecreaseCartItemQuantityUseCase(ref.watch(cartRepositoryProvider)),
);

final removeCartItemUseCaseProvider = Provider<RemoveCartItemUseCase>(
  (ref) => RemoveCartItemUseCase(ref.watch(cartRepositoryProvider)),
);

final clearCartUseCaseProvider = Provider<ClearCartUseCase>(
  (ref) => ClearCartUseCase(ref.watch(cartRepositoryProvider)),
);

final cartNotifierProvider = NotifierProvider<CartNotifier, Cart>(
  CartNotifier.new,
);

class CartNotifier extends Notifier<Cart> {
  @override
  Cart build() {
    return ref.read(getCartUseCaseProvider)().fold((_) => kEmptyCart, (c) => c);
  }

  Result<Cart> addProduct(Product product) {
    final result = ref.read(addProductToCartUseCaseProvider)(product);
    _commitSuccess(result);
    return result;
  }

  Result<Cart> increaseQuantity(String cartItemId) {
    final result =
        ref.read(increaseCartItemQuantityUseCaseProvider)(cartItemId);
    _commitSuccess(result);
    return result;
  }

  Result<Cart> decreaseQuantity(String cartItemId) {
    final result =
        ref.read(decreaseCartItemQuantityUseCaseProvider)(cartItemId);
    _commitSuccess(result);
    return result;
  }

  Result<Cart> removeItem(String cartItemId) {
    final result = ref.read(removeCartItemUseCaseProvider)(cartItemId);
    _commitSuccess(result);
    return result;
  }

  Result<Cart> clear() {
    final result = ref.read(clearCartUseCaseProvider)();
    _commitSuccess(result);
    return result;
  }

  void _commitSuccess(Result<Cart> result) {
    result.fold((_) => null, (cart) => state = cart);
  }

  int get totalUnits =>
      state.items.fold<int>(0, (sum, item) => sum + item.quantity);
}
