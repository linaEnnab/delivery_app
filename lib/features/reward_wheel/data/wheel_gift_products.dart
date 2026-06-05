import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Product ids for wheel-added lines (removed when cart clears after order).
abstract final class WheelGiftProductIds {
  static const cola = 'wheel_reward_cola';
  static const fries = 'wheel_reward_fries';
}

/// Mock catalog items added to the cart when the user claims a food reward.
abstract final class WheelGiftProducts {
  static Product freeCola(String restaurantId, {required String currencyCode}) =>
      Product(
        id: WheelGiftProductIds.cola,
        restaurantId: restaurantId,
        name: 'كولا',
        description: 'مشروب غازي — مكافأة العجلة (عرض تجريبي)',
        price: Money(amount: 0, currencyCode: currencyCode),
        imageUrl:
            'https://images.unsplash.com/photo-1622483767028-3f66f7a5d9a4?w=400&q=80',
        categoryIds: const ['drinks'],
      );

  static Product freeFries(String restaurantId, {required String currencyCode}) =>
      Product(
        id: WheelGiftProductIds.fries,
        restaurantId: restaurantId,
        name: 'بطاطا مقلية',
        description: 'بطاطا مقرمشة — مكافأة العجلة (عرض تجريبي)',
        price: Money(amount: 0, currencyCode: currencyCode),
        imageUrl:
            'https://images.unsplash.com/photo-1573080496219-bb080dd4d13c?w=400&q=80',
        categoryIds: const ['fries'],
      );
}
