import 'package:freezed_annotation/freezed_annotation.dart';

part 'spin_wheel_availability.freezed.dart';
part 'spin_wheel_availability.g.dart';

/// Server truth for gamification limits (cooldowns, daily caps).
@freezed
class SpinWheelAvailability with _$SpinWheelAvailability {
  const factory SpinWheelAvailability({
    required bool canSpin,
    required int spinsRemaining,
    DateTime? nextSpinAt,
  }) = _SpinWheelAvailability;

  factory SpinWheelAvailability.fromJson(Map<String, dynamic> json) =>
      _$SpinWheelAvailabilityFromJson(json);
}
