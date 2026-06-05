import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
/// Order history and details (`GET /api/Order/customer`, `GET /api/Order/{id}`).
abstract interface class OrdersRepository {
  Future<Result<List<CustomerOrder>>> listCustomerOrders({
    OrderStatus? statusFilter,
  });

  Future<Result<CustomerOrder>> getCustomerOrder(String orderId);
}
