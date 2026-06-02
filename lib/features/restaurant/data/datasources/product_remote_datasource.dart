import 'package:delivery_app/core/constants/marketplace_api_paths.dart';
import 'package:delivery_app/features/restaurant/data/models/product_api_dto.dart';
import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart'
    show readInt, unwrapTopLevelJsonList;
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:dio/dio.dart';

/// Remote data source for restaurant menu products.
abstract interface class ProductRemoteDataSource {
  Future<List<Product>> fetchProductsByRestaurant({
    required String restaurantId,
    required String defaultCurrencyCode,
  });
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  ProductRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<List<Product>> fetchProductsByRestaurant({
    required String restaurantId,
    required String defaultCurrencyCode,
  }) async {
    final response = await _dio.get<dynamic>(
      MarketplaceApiPaths.restaurantProducts(restaurantId),
    );
    _ensureSuccess(response);
    final list = unwrapTopLevelJsonList(response.data);
    final withDisplayOrder = list.map((dynamic e) {
      final map = e is Map<String, dynamic>
          ? e
          : throw const FormatException('Product list item must be an object');
      final order = readInt(map, 'displayOrder', 'display_order');
      final product = ProductApiDto.fromDynamic(e).toDomain(
        restaurantId: restaurantId,
        defaultCurrencyCode: defaultCurrencyCode,
      );
      return (product, order);
    }).toList()
      ..sort((a, b) => a.$2.compareTo(b.$2));
    return withDisplayOrder.map((e) => e.$1).toList();
  }

  void _ensureSuccess(Response<dynamic> response) {
    final code = response.statusCode;
    if (code == null || code >= 400) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
      );
    }
  }
}
