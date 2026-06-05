import 'package:delivery_app/core/constants/delivery_api_paths.dart';
import 'package:delivery_app/features/checkout/data/models/create_order_api_dto.dart';
import 'package:delivery_app/features/checkout/domain/entities/create_order_params.dart';
import 'package:delivery_app/features/checkout/domain/entities/placed_order.dart';
import 'package:dio/dio.dart';

/// Remote data source for checkout and place order.
abstract interface class CheckoutRemoteDataSource {
  Future<PlacedOrder> createOrder(CreateOrderParams params);
}

class CheckoutRemoteDataSourceImpl implements CheckoutRemoteDataSource {
  CheckoutRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<PlacedOrder> createOrder(CreateOrderParams params) async {
    final response = await _dio.post<dynamic>(
      DeliveryApiPaths.order,
      data: CreateOrderApiDto.requestBodyFrom(params),
    );
    _ensureSuccess(response);
    return CreateOrderApiDto.fromDynamic(response.data).toDomain();
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
