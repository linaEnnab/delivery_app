// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_tracking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderTrackingImpl _$$OrderTrackingImplFromJson(Map<String, dynamic> json) =>
    _$OrderTrackingImpl(
      orderId: json['order_id'] as String,
      currentStatus: $enumDecode(_$OrderStatusEnumMap, json['current_status']),
      timeline: (json['timeline'] as List<dynamic>)
          .map((e) => OrderTrackingEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      driverLocation: json['driver_location'] == null
          ? null
          : GeoLocation.fromJson(
              json['driver_location'] as Map<String, dynamic>,
            ),
      estimatedMinutesRemaining: (json['estimated_minutes_remaining'] as num?)
          ?.toInt(),
    );

Map<String, dynamic> _$$OrderTrackingImplToJson(_$OrderTrackingImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'current_status': _$OrderStatusEnumMap[instance.currentStatus]!,
      'timeline': instance.timeline.map((e) => e.toJson()).toList(),
      if (instance.driverLocation?.toJson() case final value?)
        'driver_location': value,
      if (instance.estimatedMinutesRemaining case final value?)
        'estimated_minutes_remaining': value,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.restaurantAccepted: 'restaurant_accepted',
  OrderStatus.preparing: 'preparing',
  OrderStatus.readyForPickup: 'ready_for_pickup',
  OrderStatus.driverAssigned: 'driver_assigned',
  OrderStatus.pickedUp: 'picked_up',
  OrderStatus.onTheWay: 'on_the_way',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};

_$OrderTrackingEventImpl _$$OrderTrackingEventImplFromJson(
  Map<String, dynamic> json,
) => _$OrderTrackingEventImpl(
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  timestamp: DateTime.parse(json['timestamp'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$$OrderTrackingEventImplToJson(
  _$OrderTrackingEventImpl instance,
) => <String, dynamic>{
  'status': _$OrderStatusEnumMap[instance.status]!,
  'timestamp': instance.timestamp.toIso8601String(),
  if (instance.note case final value?) 'note': value,
};
