import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Parses [ProductDto] items from `GET /api/restaurant/{restaurantId}/products`.
final class ProductApiDto {
  ProductApiDto._(this._json);

  final Map<String, dynamic> _json;

  factory ProductApiDto.fromDynamic(dynamic data) {
    if (data is Map<String, dynamic>) {
      return ProductApiDto._(data);
    }
    throw const FormatException('Product JSON must be an object');
  }

  Product toDomain({
    required String restaurantId,
    required String defaultCurrencyCode,
  }) {
    final j = _json;
    final id = readString(j, 'id', 'id');
    var rid = readString(
      j,
      'restaurantId',
      'restaurant_id',
      fallback: restaurantId,
      stripOpenApiPlaceholders: true,
    );
    if (rid.isEmpty) rid = restaurantId;

    final price = _readMoney(
      j,
      defaultCurrencyCode: defaultCurrencyCode,
    );

    var categoryIds = _readCategoryIds(j);
    final categoryNameRaw = readProp(j, 'categoryName', 'category_name');
    String? categoryName;
    if (categoryNameRaw != null) {
      final cleaned =
          scrubOpenApiPlaceholder(categoryNameRaw.toString().trim());
      if (cleaned.isNotEmpty) categoryName = cleaned;
    }

    if (categoryIds.isEmpty) {
      final n = categoryName;
      if (n != null && n.isNotEmpty) {
        categoryIds = [_slug(n)];
      }
    }

    var name = readString(
      j,
      'name',
      'name',
      stripOpenApiPlaceholders: true,
    );
    if (name.isEmpty) name = 'Item';

    return Product(
      id: id,
      restaurantId: rid,
      name: name,
      description: readString(
        j,
        'description',
        'description',
        stripOpenApiPlaceholders: true,
      ),
      price: price,
      imageUrl: _readOptionalString(j, 'imageUrl', 'image_url'),
      categoryIds: categoryIds,
      categoryName: categoryName,
      isAvailable: readBool(j, 'isAvailable', 'is_available', fallback: true),
      optionGroups: const [],
    );
  }

  static List<String> _readCategoryIds(Map<String, dynamic> j) {
    final list = readList(j, 'categoryIds', 'category_ids');
    if (list.isNotEmpty) {
      return list.map((e) => e.toString()).toList();
    }
    final single = readProp(j, 'categoryId', 'category_id');
    if (single != null && single.toString().isNotEmpty) {
      return [single.toString()];
    }
    return const [];
  }

  static String _slug(String value) {
    final trimmed = value.trim().toLowerCase();
    return trimmed.replaceAll(RegExp(r'\s+'), '_');
  }

  static String? _readOptionalString(
    Map<String, dynamic> j,
    String camel,
    String snake,
  ) {
    final s = readString(
      j,
      camel,
      snake,
      fallback: '',
      stripOpenApiPlaceholders: true,
    );
    return s.isEmpty ? null : s;
  }

  static Money _readMoney(
    Map<String, dynamic> j, {
    required String defaultCurrencyCode,
  }) {
    final nested = readMap(j, 'price', 'price');
    if (nested != null) {
      final amount = readDouble(nested, 'amount', 'amount');
      final code = readString(
        nested,
        'currencyCode',
        'currency_code',
        fallback: readString(
          nested,
          'currency',
          'currency',
          fallback: defaultCurrencyCode,
        ),
      );
      return Money(amount: amount, currencyCode: code);
    }

    final flat = readDouble(j, 'price', 'price');
    if (flat != 0 || readProp(j, 'price', 'price') != null) {
      return Money(
        amount: flat,
        currencyCode: readString(
          j,
          'currencyCode',
          'currency_code',
          fallback: defaultCurrencyCode,
        ),
      );
    }

    final unit = readDouble(j, 'unitPrice', 'unit_price');
    return Money(
      amount: unit,
      currencyCode: readString(
        j,
        'currencyCode',
        'currency_code',
        fallback: defaultCurrencyCode,
      ),
    );
  }
}
