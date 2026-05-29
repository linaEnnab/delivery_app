import 'package:delivery_app/shared/domain/entities/commission_breakdown.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_pricing.freezed.dart';
part 'order_pricing.g.dart';

/// Full order financial snapshot for checkout, orders, and accounting.
@freezed
class OrderPricing with _$OrderPricing {
  const OrderPricing._();

  const factory OrderPricing({
    required Money subtotal,
    required Money deliveryFee,
    @Default(Money.zero) Money serviceFee,
    @Default(Money.zero) Money discountTotal,
    @Default(Money.zero) Money couponDiscount,
    @Default(Money.zero) Money freeDeliverySavings,
    required Money taxAmount,
    required Money grandTotal,
    required CommissionBreakdown commission,
    String? appliedCouponCode,
    String? promotionId,
  }) = _OrderPricing;

  factory OrderPricing.fromJson(Map<String, dynamic> json) =>
      _$OrderPricingFromJson(json);

  bool get hasFreeDelivery => freeDeliverySavings.isPositive;

  // --- Pricing snapshot aliases (SQL `OrderPricingSnapshots` / finance APIs) ---

  Money get orderSubtotal => subtotal;

  Money get discountAmount => discountTotal;

  Money get couponAmount => couponDiscount;

  Money get finalTotal => grandTotal;

  Money get platformCommission => commission.platformCommission;

  Money get driverEarnings => commission.driverEarnings;
}
