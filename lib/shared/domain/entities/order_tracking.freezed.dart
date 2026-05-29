// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderTracking _$OrderTrackingFromJson(Map<String, dynamic> json) {
  return _OrderTracking.fromJson(json);
}

/// @nodoc
mixin _$OrderTracking {
  String get orderId => throw _privateConstructorUsedError;
  OrderStatus get currentStatus => throw _privateConstructorUsedError;
  List<OrderTrackingEvent> get timeline => throw _privateConstructorUsedError;
  GeoLocation? get driverLocation => throw _privateConstructorUsedError;
  int? get estimatedMinutesRemaining => throw _privateConstructorUsedError;

  /// Serializes this OrderTracking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTrackingCopyWith<OrderTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackingCopyWith<$Res> {
  factory $OrderTrackingCopyWith(
    OrderTracking value,
    $Res Function(OrderTracking) then,
  ) = _$OrderTrackingCopyWithImpl<$Res, OrderTracking>;
  @useResult
  $Res call({
    String orderId,
    OrderStatus currentStatus,
    List<OrderTrackingEvent> timeline,
    GeoLocation? driverLocation,
    int? estimatedMinutesRemaining,
  });

  $GeoLocationCopyWith<$Res>? get driverLocation;
}

/// @nodoc
class _$OrderTrackingCopyWithImpl<$Res, $Val extends OrderTracking>
    implements $OrderTrackingCopyWith<$Res> {
  _$OrderTrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? currentStatus = null,
    Object? timeline = null,
    Object? driverLocation = freezed,
    Object? estimatedMinutesRemaining = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentStatus: null == currentStatus
                ? _value.currentStatus
                : currentStatus // ignore: cast_nullable_to_non_nullable
                      as OrderStatus,
            timeline: null == timeline
                ? _value.timeline
                : timeline // ignore: cast_nullable_to_non_nullable
                      as List<OrderTrackingEvent>,
            driverLocation: freezed == driverLocation
                ? _value.driverLocation
                : driverLocation // ignore: cast_nullable_to_non_nullable
                      as GeoLocation?,
            estimatedMinutesRemaining: freezed == estimatedMinutesRemaining
                ? _value.estimatedMinutesRemaining
                : estimatedMinutesRemaining // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get driverLocation {
    if (_value.driverLocation == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_value.driverLocation!, (value) {
      return _then(_value.copyWith(driverLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderTrackingImplCopyWith<$Res>
    implements $OrderTrackingCopyWith<$Res> {
  factory _$$OrderTrackingImplCopyWith(
    _$OrderTrackingImpl value,
    $Res Function(_$OrderTrackingImpl) then,
  ) = __$$OrderTrackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String orderId,
    OrderStatus currentStatus,
    List<OrderTrackingEvent> timeline,
    GeoLocation? driverLocation,
    int? estimatedMinutesRemaining,
  });

  @override
  $GeoLocationCopyWith<$Res>? get driverLocation;
}

/// @nodoc
class __$$OrderTrackingImplCopyWithImpl<$Res>
    extends _$OrderTrackingCopyWithImpl<$Res, _$OrderTrackingImpl>
    implements _$$OrderTrackingImplCopyWith<$Res> {
  __$$OrderTrackingImplCopyWithImpl(
    _$OrderTrackingImpl _value,
    $Res Function(_$OrderTrackingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? currentStatus = null,
    Object? timeline = null,
    Object? driverLocation = freezed,
    Object? estimatedMinutesRemaining = freezed,
  }) {
    return _then(
      _$OrderTrackingImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentStatus: null == currentStatus
            ? _value.currentStatus
            : currentStatus // ignore: cast_nullable_to_non_nullable
                  as OrderStatus,
        timeline: null == timeline
            ? _value._timeline
            : timeline // ignore: cast_nullable_to_non_nullable
                  as List<OrderTrackingEvent>,
        driverLocation: freezed == driverLocation
            ? _value.driverLocation
            : driverLocation // ignore: cast_nullable_to_non_nullable
                  as GeoLocation?,
        estimatedMinutesRemaining: freezed == estimatedMinutesRemaining
            ? _value.estimatedMinutesRemaining
            : estimatedMinutesRemaining // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTrackingImpl implements _OrderTracking {
  const _$OrderTrackingImpl({
    required this.orderId,
    required this.currentStatus,
    required final List<OrderTrackingEvent> timeline,
    this.driverLocation,
    this.estimatedMinutesRemaining,
  }) : _timeline = timeline;

  factory _$OrderTrackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTrackingImplFromJson(json);

  @override
  final String orderId;
  @override
  final OrderStatus currentStatus;
  final List<OrderTrackingEvent> _timeline;
  @override
  List<OrderTrackingEvent> get timeline {
    if (_timeline is EqualUnmodifiableListView) return _timeline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeline);
  }

  @override
  final GeoLocation? driverLocation;
  @override
  final int? estimatedMinutesRemaining;

  @override
  String toString() {
    return 'OrderTracking(orderId: $orderId, currentStatus: $currentStatus, timeline: $timeline, driverLocation: $driverLocation, estimatedMinutesRemaining: $estimatedMinutesRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTrackingImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.currentStatus, currentStatus) ||
                other.currentStatus == currentStatus) &&
            const DeepCollectionEquality().equals(other._timeline, _timeline) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation) &&
            (identical(
                  other.estimatedMinutesRemaining,
                  estimatedMinutesRemaining,
                ) ||
                other.estimatedMinutesRemaining == estimatedMinutesRemaining));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderId,
    currentStatus,
    const DeepCollectionEquality().hash(_timeline),
    driverLocation,
    estimatedMinutesRemaining,
  );

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTrackingImplCopyWith<_$OrderTrackingImpl> get copyWith =>
      __$$OrderTrackingImplCopyWithImpl<_$OrderTrackingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTrackingImplToJson(this);
  }
}

abstract class _OrderTracking implements OrderTracking {
  const factory _OrderTracking({
    required final String orderId,
    required final OrderStatus currentStatus,
    required final List<OrderTrackingEvent> timeline,
    final GeoLocation? driverLocation,
    final int? estimatedMinutesRemaining,
  }) = _$OrderTrackingImpl;

  factory _OrderTracking.fromJson(Map<String, dynamic> json) =
      _$OrderTrackingImpl.fromJson;

  @override
  String get orderId;
  @override
  OrderStatus get currentStatus;
  @override
  List<OrderTrackingEvent> get timeline;
  @override
  GeoLocation? get driverLocation;
  @override
  int? get estimatedMinutesRemaining;

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTrackingImplCopyWith<_$OrderTrackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderTrackingEvent _$OrderTrackingEventFromJson(Map<String, dynamic> json) {
  return _OrderTrackingEvent.fromJson(json);
}

/// @nodoc
mixin _$OrderTrackingEvent {
  OrderStatus get status => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this OrderTrackingEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderTrackingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTrackingEventCopyWith<OrderTrackingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackingEventCopyWith<$Res> {
  factory $OrderTrackingEventCopyWith(
    OrderTrackingEvent value,
    $Res Function(OrderTrackingEvent) then,
  ) = _$OrderTrackingEventCopyWithImpl<$Res, OrderTrackingEvent>;
  @useResult
  $Res call({OrderStatus status, DateTime timestamp, String? note});
}

/// @nodoc
class _$OrderTrackingEventCopyWithImpl<$Res, $Val extends OrderTrackingEvent>
    implements $OrderTrackingEventCopyWith<$Res> {
  _$OrderTrackingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTrackingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timestamp = null,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as OrderStatus,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderTrackingEventImplCopyWith<$Res>
    implements $OrderTrackingEventCopyWith<$Res> {
  factory _$$OrderTrackingEventImplCopyWith(
    _$OrderTrackingEventImpl value,
    $Res Function(_$OrderTrackingEventImpl) then,
  ) = __$$OrderTrackingEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStatus status, DateTime timestamp, String? note});
}

/// @nodoc
class __$$OrderTrackingEventImplCopyWithImpl<$Res>
    extends _$OrderTrackingEventCopyWithImpl<$Res, _$OrderTrackingEventImpl>
    implements _$$OrderTrackingEventImplCopyWith<$Res> {
  __$$OrderTrackingEventImplCopyWithImpl(
    _$OrderTrackingEventImpl _value,
    $Res Function(_$OrderTrackingEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderTrackingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timestamp = null,
    Object? note = freezed,
  }) {
    return _then(
      _$OrderTrackingEventImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as OrderStatus,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTrackingEventImpl implements _OrderTrackingEvent {
  const _$OrderTrackingEventImpl({
    required this.status,
    required this.timestamp,
    this.note,
  });

  factory _$OrderTrackingEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTrackingEventImplFromJson(json);

  @override
  final OrderStatus status;
  @override
  final DateTime timestamp;
  @override
  final String? note;

  @override
  String toString() {
    return 'OrderTrackingEvent(status: $status, timestamp: $timestamp, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTrackingEventImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, timestamp, note);

  /// Create a copy of OrderTrackingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTrackingEventImplCopyWith<_$OrderTrackingEventImpl> get copyWith =>
      __$$OrderTrackingEventImplCopyWithImpl<_$OrderTrackingEventImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTrackingEventImplToJson(this);
  }
}

abstract class _OrderTrackingEvent implements OrderTrackingEvent {
  const factory _OrderTrackingEvent({
    required final OrderStatus status,
    required final DateTime timestamp,
    final String? note,
  }) = _$OrderTrackingEventImpl;

  factory _OrderTrackingEvent.fromJson(Map<String, dynamic> json) =
      _$OrderTrackingEventImpl.fromJson;

  @override
  OrderStatus get status;
  @override
  DateTime get timestamp;
  @override
  String? get note;

  /// Create a copy of OrderTrackingEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTrackingEventImplCopyWith<_$OrderTrackingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
