import 'package:delivery_app/core/constants/marketplace_api_paths.dart';
import 'package:delivery_app/features/restaurant/data/models/restaurant_api_dto.dart';
import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:dio/dio.dart';

/// Remote data source for restaurant listing and details.
abstract interface class RestaurantRemoteDataSource {
  Future<List<RestaurantSummary>> fetchRestaurants();

  Future<RestaurantSummary> fetchRestaurantById(String id);
}

class RestaurantRemoteDataSourceImpl implements RestaurantRemoteDataSource {
  RestaurantRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<List<RestaurantSummary>> fetchRestaurants() async {
    final response = await _dio.get<dynamic>(MarketplaceApiPaths.restaurants);
    _ensureSuccess(response);
    final list = unwrapTopLevelJsonList(response.data);
    return list
        .map((e) => RestaurantApiDto.fromDynamic(e).toDomain())
        .toList();
  }

  @override
  Future<RestaurantSummary> fetchRestaurantById(String id) async {
    final response = await _dio.get<dynamic>(
      MarketplaceApiPaths.restaurantById(id),
    );
    _ensureSuccess(response);
    return RestaurantApiDto.fromDynamic(response.data).toDomain();
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
