import 'package:delivery_app/shared/domain/enums/order_status.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_tracking.freezed.dart';
part 'order_tracking.g.dart';

@freezed
class OrderTracking with _$OrderTracking {
  const factory OrderTracking({
    required String orderId,
    required OrderStatus currentStatus,
    required List<OrderTrackingEvent> timeline,
    GeoLocation? driverLocation,
    int? estimatedMinutesRemaining,
  }) = _OrderTracking;

  factory OrderTracking.fromJson(Map<String, dynamic> json) =>
      _$OrderTrackingFromJson(json);
}

@freezed
class OrderTrackingEvent with _$OrderTrackingEvent {
  const factory OrderTrackingEvent({
    required OrderStatus status,
    required DateTime timestamp,
    String? note,
  }) = _OrderTrackingEvent;

  factory OrderTrackingEvent.fromJson(Map<String, dynamic> json) =>
      _$OrderTrackingEventFromJson(json);
}
