import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Demo orders — Arabic restaurant names, [Money] totals in ILS like cart mocks.
/// All mock orders for My Orders + order tracking lookup.
final List<CustomerOrder> kMockCustomerOrders = [
  CustomerOrder(
    id: 'ord-ak-10492',
    orderNumber: 'AK-10492',
    restaurantName: 'مطعم الشام',
    status: OrderStatus.onTheWay,
    total: Money(amount: 48.5, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 12, 30),
    driverName: 'خالد يوسف',
    driverRating: 4.9,
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 13, 15),
  ),
  CustomerOrder(
    id: 'ord-001',
    orderNumber: 'AK-10401',
    restaurantName: 'برجر فيول',
    status: OrderStatus.pending,
    total: Money(amount: 62, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 14, 5),
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 14, 50),
  ),
  CustomerOrder(
    id: 'ord-002',
    orderNumber: 'AK-10388',
    restaurantName: 'بيتزا روما',
    status: OrderStatus.restaurantAccepted,
    total: Money(amount: 89.25, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 13, 40),
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 14, 25),
  ),
  CustomerOrder(
    id: 'ord-003',
    orderNumber: 'AK-10370',
    restaurantName: 'سوشي طوكيو',
    status: OrderStatus.preparing,
    total: Money(amount: 120, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 13, 15),
    driverName: 'أحمد نصر',
    driverRating: 4.8,
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 14, 0),
  ),
  CustomerOrder(
    id: 'ord-004',
    orderNumber: 'AK-10210',
    restaurantName: 'مشاوي القدس',
    status: OrderStatus.delivered,
    total: Money(amount: 74, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 5, 30, 19, 20),
    driverName: 'سامي حمدان',
    driverRating: 4.7,
    estimatedArrivalAt: DateTime.utc(2026, 5, 30, 19, 55),
  ),
  CustomerOrder(
    id: 'ord-005',
    orderNumber: 'AK-10102',
    restaurantName: 'كنافة حبيبة',
    status: OrderStatus.cancelled,
    total: Money(amount: 35, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 5, 25, 10, 0),
    estimatedArrivalAt: DateTime.utc(2026, 5, 25, 10, 35),
  ),
  CustomerOrder(
    id: 'ord-006',
    orderNumber: 'AK-10355',
    restaurantName: 'شاورما بيروت',
    status: OrderStatus.readyForPickup,
    total: Money(amount: 42, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 11, 0),
    driverName: 'محمود علي',
    driverRating: 4.85,
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 11, 40),
  ),
  CustomerOrder(
    id: 'ord-007',
    orderNumber: 'AK-10340',
    restaurantName: 'مندي صنعاء',
    status: OrderStatus.driverAssigned,
    total: Money(amount: 95.5, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 10, 45),
    driverName: 'يوسف كريم',
    driverRating: 5,
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 11, 30),
  ),
  CustomerOrder(
    id: 'ord-008',
    orderNumber: 'AK-10322',
    restaurantName: 'فلافل دمشق',
    status: OrderStatus.pickedUp,
    total: Money(amount: 28, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 6, 1, 10, 10),
    driverName: 'طارق منصور',
    driverRating: 4.6,
    estimatedArrivalAt: DateTime.utc(2026, 6, 1, 10, 45),
  ),
  CustomerOrder(
    id: 'ord-009',
    orderNumber: 'AK-10288',
    restaurantName: 'مطبخ بيت أمي',
    status: OrderStatus.delivered,
    total: Money(amount: 56.25, currencyCode: 'ILS'),
    placedAt: DateTime.utc(2026, 5, 29, 17, 0),
    driverName: 'رامي عدوان',
    driverRating: 4.95,
    estimatedArrivalAt: DateTime.utc(2026, 5, 29, 17, 40),
  ),
];

/// Lookup by route param [orderId]; returns null if unknown (deep link / stale).
CustomerOrder? findMockCustomerOrder(String orderId) {
  for (final o in kMockCustomerOrders) {
    if (o.id == orderId) return o;
  }
  return null;
}

/// Active = not delivered and not cancelled.
List<CustomerOrder> mockActiveOrders() =>
    kMockCustomerOrders.where((o) => o.status.isActiveCustomerView).toList()
      ..sort((a, b) => b.placedAt.compareTo(a.placedAt));

List<CustomerOrder> mockCompletedOrders() =>
    kMockCustomerOrders
        .where((o) => !o.status.isActiveCustomerView)
        .toList()
      ..sort((a, b) => b.placedAt.compareTo(a.placedAt));
