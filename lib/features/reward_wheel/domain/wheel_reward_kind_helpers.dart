import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';

extension WheelRewardKindHelpers on WheelRewardKind {
  /// Points credited on claim (mock ledger only).
  int get loyaltyPointsBonus => switch (this) {
        WheelRewardKind.loyaltyPoints25 => 25,
        WheelRewardKind.loyaltyPoints50 => 50,
        _ => 0,
      };

  bool get addsFreeProductToCart =>
      this == WheelRewardKind.freeCola || this == WheelRewardKind.freeFries;

  bool get appliesMealHalfOff => this == WheelRewardKind.mealDiscount50;

  bool get waivesDeliveryFee => this == WheelRewardKind.freeDelivery;
}
