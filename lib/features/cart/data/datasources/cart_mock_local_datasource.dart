import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/cart/domain/cart_business_rules.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

/// In-memory cart for development — no persistence, no network.
final class CartMockLocalDataSource {
  CartMockLocalDataSource();

  static const _cartId = 'local-cart';
  final _uuid = const Uuid();
  Cart _cart = const Cart(id: _cartId, restaurantId: '', items: []);

  Cart _copyCart(List<CartItem> items, {String? restaurantId}) {
    return Cart(
      id: _cartId,
      restaurantId: restaurantId ?? _cart.restaurantId,
      items: items,
      pricingPreview: _cart.pricingPreview,
    );
  }

  static Money _lineTotal(Money unitPrice, int quantity) {
    return Money(
      amount: unitPrice.amount * quantity,
      currencyCode: unitPrice.currencyCode,
    );
  }

  Result<Cart> getCart() => Right(_cart);

  Result<Cart> clear() {
    _cart = const Cart(id: _cartId, restaurantId: '', items: []);
    return Right(_cart);
  }

  Result<Cart> addProduct(Product product) {
    if (_cart.items.isNotEmpty &&
        _cart.restaurantId.isNotEmpty &&
        _cart.restaurantId != product.restaurantId) {
      return const Left(
        Failure.businessRule(
          message: CartBusinessRules.differentRestaurant,
        ),
      );
    }

    final restaurantId =
        _cart.items.isEmpty ? product.restaurantId : _cart.restaurantId;

    final existingIndex =
        _cart.items.indexWhere((e) => e.productId == product.id);

    if (existingIndex >= 0) {
      final existing = _cart.items[existingIndex];
      final qty = existing.quantity + 1;
      final updated = existing.copyWith(
        quantity: qty,
        lineTotal: _lineTotal(existing.unitPrice, qty),
      );
      final items = [..._cart.items]..[existingIndex] = updated;
      _cart = _copyCart(items, restaurantId: restaurantId);
      return Right(_cart);
    }

    final item = CartItem(
      id: _uuid.v4(),
      productId: product.id,
      productName: product.name,
      quantity: 1,
      unitPrice: product.price,
      lineTotal: product.price,
      imageUrl: product.imageUrl,
    );

    _cart = _copyCart(
      [..._cart.items, item],
      restaurantId: restaurantId,
    );
    return Right(_cart);
  }

  Result<Cart> increaseItemQuantity(String cartItemId) {
    final index = _cart.items.indexWhere((e) => e.id == cartItemId);
    if (index < 0) {
      return const Left(Failure.notFound(message: 'cart_item_not_found'));
    }
    final existing = _cart.items[index];
    final qty = existing.quantity + 1;
    final updated = existing.copyWith(
      quantity: qty,
      lineTotal: _lineTotal(existing.unitPrice, qty),
    );
    final items = [..._cart.items]..[index] = updated;
    _cart = _copyCart(items);
    return Right(_cart);
  }

  Result<Cart> decreaseItemQuantity(String cartItemId) {
    final index = _cart.items.indexWhere((e) => e.id == cartItemId);
    if (index < 0) {
      return const Left(Failure.notFound(message: 'cart_item_not_found'));
    }
    final existing = _cart.items[index];
    if (existing.quantity <= 1) {
      final items = _cart.items.where((e) => e.id != cartItemId).toList();
      _cart = _copyCart(
        items,
        restaurantId: items.isEmpty ? '' : _cart.restaurantId,
      );
      return Right(_cart);
    }
    final qty = existing.quantity - 1;
    final updated = existing.copyWith(
      quantity: qty,
      lineTotal: _lineTotal(existing.unitPrice, qty),
    );
    final items = [..._cart.items]..[index] = updated;
    _cart = _copyCart(items);
    return Right(_cart);
  }

  Result<Cart> removeItem(String cartItemId) {
    final items = _cart.items.where((e) => e.id != cartItemId).toList();
    _cart = _copyCart(
      items,
      restaurantId: items.isEmpty ? '' : _cart.restaurantId,
    );
    return Right(_cart);
  }
}
