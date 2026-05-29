import 'package:freezed_annotation/freezed_annotation.dart';

/// Driver fulfillment vehicle for marketplace ops and customer display.
@JsonEnum(fieldRename: FieldRename.snake)
enum DriverVehicleType {
  motorcycle,
  car,
  bicycle,
  scooter,
  walking,
  unknown,
}
