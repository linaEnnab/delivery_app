import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';

/// Restaurant menu products.
abstract interface class ProductRepository {
  Future<Result<List<Product>>> listByRestaurant({
    required String restaurantId,
    required String defaultCurrencyCode,
  });
}
