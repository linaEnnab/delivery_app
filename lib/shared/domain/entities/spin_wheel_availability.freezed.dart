// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spin_wheel_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpinWheelAvailability _$SpinWheelAvailabilityFromJson(
  Map<String, dynamic> json,
) {
  return _SpinWheelAvailability.fromJson(json);
}

/// @nodoc
mixin _$SpinWheelAvailability {
  bool get canSpin => throw _privateConstructorUsedError;
  int get spinsRemaining => throw _privateConstructorUsedError;
  DateTime? get nextSpinAt => throw _privateConstructorUsedError;

  /// Serializes this SpinWheelAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpinWheelAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpinWheelAvailabilityCopyWith<SpinWheelAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpinWheelAvailabilityCopyWith<$Res> {
  factory $SpinWheelAvailabilityCopyWith(
    SpinWheelAvailability value,
    $Res Function(SpinWheelAvailability) then,
  ) = _$SpinWheelAvailabilityCopyWithImpl<$Res, SpinWheelAvailability>;
  @useResult
  $Res call({bool canSpin, int spinsRemaining, DateTime? nextSpinAt});
}

/// @nodoc
class _$SpinWheelAvailabilityCopyWithImpl<
  $Res,
  $Val extends SpinWheelAvailability
>
    implements $SpinWheelAvailabilityCopyWith<$Res> {
  _$SpinWheelAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpinWheelAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canSpin = null,
    Object? spinsRemaining = null,
    Object? nextSpinAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            canSpin: null == canSpin
                ? _value.canSpin
                : canSpin // ignore: cast_nullable_to_non_nullable
                      as bool,
            spinsRemaining: null == spinsRemaining
                ? _value.spinsRemaining
                : spinsRemaining // ignore: cast_nullable_to_non_nullable
                      as int,
            nextSpinAt: freezed == nextSpinAt
                ? _value.nextSpinAt
                : nextSpinAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpinWheelAvailabilityImplCopyWith<$Res>
    implements $SpinWheelAvailabilityCopyWith<$Res> {
  factory _$$SpinWheelAvailabilityImplCopyWith(
    _$SpinWheelAvailabilityImpl value,
    $Res Function(_$SpinWheelAvailabilityImpl) then,
  ) = __$$SpinWheelAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canSpin, int spinsRemaining, DateTime? nextSpinAt});
}

/// @nodoc
class __$$SpinWheelAvailabilityImplCopyWithImpl<$Res>
    extends
        _$SpinWheelAvailabilityCopyWithImpl<$Res, _$SpinWheelAvailabilityImpl>
    implements _$$SpinWheelAvailabilityImplCopyWith<$Res> {
  __$$SpinWheelAvailabilityImplCopyWithImpl(
    _$SpinWheelAvailabilityImpl _value,
    $Res Function(_$SpinWheelAvailabilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpinWheelAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canSpin = null,
    Object? spinsRemaining = null,
    Object? nextSpinAt = freezed,
  }) {
    return _then(
      _$SpinWheelAvailabilityImpl(
        canSpin: null == canSpin
            ? _value.canSpin
            : canSpin // ignore: cast_nullable_to_non_nullable
                  as bool,
        spinsRemaining: null == spinsRemaining
            ? _value.spinsRemaining
            : spinsRemaining // ignore: cast_nullable_to_non_nullable
                  as int,
        nextSpinAt: freezed == nextSpinAt
            ? _value.nextSpinAt
            : nextSpinAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpinWheelAvailabilityImpl implements _SpinWheelAvailability {
  const _$SpinWheelAvailabilityImpl({
    required this.canSpin,
    required this.spinsRemaining,
    this.nextSpinAt,
  });

  factory _$SpinWheelAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpinWheelAvailabilityImplFromJson(json);

  @override
  final bool canSpin;
  @override
  final int spinsRemaining;
  @override
  final DateTime? nextSpinAt;

  @override
  String toString() {
    return 'SpinWheelAvailability(canSpin: $canSpin, spinsRemaining: $spinsRemaining, nextSpinAt: $nextSpinAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpinWheelAvailabilityImpl &&
            (identical(other.canSpin, canSpin) || other.canSpin == canSpin) &&
            (identical(other.spinsRemaining, spinsRemaining) ||
                other.spinsRemaining == spinsRemaining) &&
            (identical(other.nextSpinAt, nextSpinAt) ||
                other.nextSpinAt == nextSpinAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, canSpin, spinsRemaining, nextSpinAt);

  /// Create a copy of SpinWheelAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpinWheelAvailabilityImplCopyWith<_$SpinWheelAvailabilityImpl>
  get copyWith =>
      __$$SpinWheelAvailabilityImplCopyWithImpl<_$SpinWheelAvailabilityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpinWheelAvailabilityImplToJson(this);
  }
}

abstract class _SpinWheelAvailability implements SpinWheelAvailability {
  const factory _SpinWheelAvailability({
    required final bool canSpin,
    required final int spinsRemaining,
    final DateTime? nextSpinAt,
  }) = _$SpinWheelAvailabilityImpl;

  factory _SpinWheelAvailability.fromJson(Map<String, dynamic> json) =
      _$SpinWheelAvailabilityImpl.fromJson;

  @override
  bool get canSpin;
  @override
  int get spinsRemaining;
  @override
  DateTime? get nextSpinAt;

  /// Create a copy of SpinWheelAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpinWheelAvailabilityImplCopyWith<_$SpinWheelAvailabilityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
