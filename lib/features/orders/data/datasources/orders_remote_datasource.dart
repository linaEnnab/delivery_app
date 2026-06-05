import 'package:delivery_app/core/constants/delivery_api_paths.dart';
import 'package:delivery_app/features/orders/data/models/order_api_dto.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';
import 'package:dio/dio.dart';

/// Remote data source for customer order history and details.
abstract interface class OrdersRemoteDataSource {
  Future<List<CustomerOrder>> fetchCustomerOrders({OrderStatus? statusFilter});

  Future<CustomerOrder> fetchOrderById(String orderId);
}

class OrdersRemoteDataSourceImpl implements OrdersRemoteDataSource {
  OrdersRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<List<CustomerOrder>> fetchCustomerOrders({
    OrderStatus? statusFilter,
  }) async {
    final response = await _dio.get<dynamic>(
      DeliveryApiPaths.orderCustomer,
      queryParameters: statusFilter == null
          ? null
          : <String, dynamic>{
              'status': _orderStatusToApi(statusFilter),
            },
    );
    _ensureSuccess(response);
    final list = _unwrapOrderList(response.data);
    return list
        .map((e) => OrderListItemApiDto.fromDynamic(e).toCustomerOrder())
        .toList();
  }

  @override
  Future<CustomerOrder> fetchOrderById(String orderId) async {
    final response = await _dio.get<dynamic>(
      DeliveryApiPaths.orderById(orderId),
    );
    _ensureSuccess(response);
    return OrderDetailApiDto.fromDynamic(response.data).toCustomerOrder();
  }

  List<dynamic> _unwrapOrderList(dynamic data) {
    if (data is List<dynamic>) return data;
    return unwrapTopLevelJsonList(data);
  }

  int _orderStatusToApi(OrderStatus status) {
    return switch (status) {
      OrderStatus.pending => 0,
      OrderStatus.restaurantAccepted => 1,
      OrderStatus.preparing => 2,
      OrderStatus.readyForPickup => 3,
      OrderStatus.driverAssigned => 4,
      OrderStatus.pickedUp => 5,
      OrderStatus.onTheWay => 6,
      OrderStatus.delivered => 7,
      OrderStatus.cancelled => 8,
    };
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
