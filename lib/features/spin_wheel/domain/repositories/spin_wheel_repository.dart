import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';
import 'package:delivery_app/shared/domain/entities/spin_wheel_availability.dart';

/// Spin wheel gamification (separate slice from points ledger).
abstract interface class SpinWheelRepository {
  Future<Result<SpinWheelAvailability>> getAvailability();

  Future<Result<SpinWheelResult>> spin();
}
