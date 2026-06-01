import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/user_current_location.dart';

/// Local persistence + refresh pipeline for the **browsing** location used to
/// filter nearby restaurants (not the checkout delivery pin).
abstract interface class UserCurrentLocationRepository {
  /// Last snapshot written to device storage, if any.
  Future<Result<UserCurrentLocation?>> getSaved();

  /// Emits updates when [save] / [clear] / [refreshFromDeviceGps] completes.
  Stream<UserCurrentLocation?> watchSaved();

  Future<Result<void>> save(UserCurrentLocation location);

  Future<Result<void>> clear();

  /// Acquire a fresh GNSS fix and (in implementations) run reverse geocoding
  /// to populate [UserCurrentLocation.city] / [UserCurrentLocation.area].
  Future<Result<UserCurrentLocation>> refreshFromDeviceGps();
}
