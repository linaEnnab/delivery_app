import 'package:freezed_annotation/freezed_annotation.dart';

/// Order lifecycle aligned with ASP.NET Core / SQL Server backend.
@JsonEnum(fieldRename: FieldRename.snake)
enum OrderStatus {
  pending,
  restaurantAccepted,
  preparing,
  readyForPickup,
  driverAssigned,
  pickedUp,
  onTheWay,
  delivered,
  cancelled;

  bool get isTerminal =>
      this == OrderStatus.delivered || this == OrderStatus.cancelled;

  /// Reviews are only allowed after delivery (business rule).
  bool get canSubmitReview => this == OrderStatus.delivered;

  /// Fulfillment path: accepted by restaurant through in-transit states.
  bool get isActiveFulfillment =>
      this != OrderStatus.pending &&
      this != OrderStatus.cancelled &&
      this != OrderStatus.delivered;
}
