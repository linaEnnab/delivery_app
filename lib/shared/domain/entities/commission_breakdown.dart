import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commission_breakdown.freezed.dart';
part 'commission_breakdown.g.dart';

/// Platform / restaurant / driver revenue split for future accounting.
@freezed
class CommissionBreakdown with _$CommissionBreakdown {
  const factory CommissionBreakdown({
    required Money platformCommission,
    required Money restaurantEarnings,
    required Money driverEarnings,
    required Money deliveryFee,
    @Default(Money.zero) Money discountAbsorbedByPlatform,
    @Default(Money.zero) Money discountAbsorbedByRestaurant,
    @Default(Money.zero) Money taxAmount,
  }) = _CommissionBreakdown;

  factory CommissionBreakdown.fromJson(Map<String, dynamic> json) =>
      _$CommissionBreakdownFromJson(json);
}
