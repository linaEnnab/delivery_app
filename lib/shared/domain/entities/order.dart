import 'package:delivery_app/shared/domain/entities/address.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/entities/order_fulfillment.dart';
import 'package:delivery_app/shared/domain/entities/order_pricing.dart';
import 'package:delivery_app/shared/domain/enums/order_status.dart';
import 'package:delivery_app/shared/domain/enums/payment_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    required String id,
    required String orderNumber,
    required OrderRestaurantDetails restaurant,
    required OrderStatus status,
    required List<CartItem> items,
    required OrderPricing pricing,
    required Address deliveryAddress,
    required PaymentMethod paymentMethod,
    CustomerDeliveryContact? customerContact,
    DriverSummary? driver,
    /// Loyalty points earned when the order completes (API snapshot).
    @Default(0) int loyaltyPointsEarned,
    DateTime? placedAt,
    DateTime? deliveredAt,
    @Default(false) bool isReviewSubmitted,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  bool get canSubmitReview => status.canSubmitReview && !isReviewSubmitted;

  /// Convenience for discovery-style UI that only needs the branch id.
  String get restaurantId => restaurant.id;
}
