import 'package:freezed_annotation/freezed_annotation.dart';

/// How the client obtained a [UserCurrentLocation] snapshot.
@JsonEnum(fieldRename: FieldRename.snake)
enum LocationFixSource {
  /// Device GNSS / fused location provider.
  gps,

  /// Restored from local persistence without a fresh GNSS read.
  restored,
}
