// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spin_wheel_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpinWheelAvailabilityImpl _$$SpinWheelAvailabilityImplFromJson(
  Map<String, dynamic> json,
) => _$SpinWheelAvailabilityImpl(
  canSpin: json['can_spin'] as bool,
  spinsRemaining: (json['spins_remaining'] as num).toInt(),
  nextSpinAt: json['next_spin_at'] == null
      ? null
      : DateTime.parse(json['next_spin_at'] as String),
);

Map<String, dynamic> _$$SpinWheelAvailabilityImplToJson(
  _$SpinWheelAvailabilityImpl instance,
) => <String, dynamic>{
  'can_spin': instance.canSpin,
  'spins_remaining': instance.spinsRemaining,
  if (instance.nextSpinAt?.toIso8601String() case final value?)
    'next_spin_at': value,
};
