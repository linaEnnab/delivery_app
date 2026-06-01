// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_estimate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteEstimate {
  double get distanceMeters => throw _privateConstructorUsedError;
  int get travelDurationSeconds => throw _privateConstructorUsedError;

  /// Create a copy of RouteEstimate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteEstimateCopyWith<RouteEstimate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteEstimateCopyWith<$Res> {
  factory $RouteEstimateCopyWith(
    RouteEstimate value,
    $Res Function(RouteEstimate) then,
  ) = _$RouteEstimateCopyWithImpl<$Res, RouteEstimate>;
  @useResult
  $Res call({double distanceMeters, int travelDurationSeconds});
}

/// @nodoc
class _$RouteEstimateCopyWithImpl<$Res, $Val extends RouteEstimate>
    implements $RouteEstimateCopyWith<$Res> {
  _$RouteEstimateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteEstimate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = null,
    Object? travelDurationSeconds = null,
  }) {
    return _then(
      _value.copyWith(
            distanceMeters: null == distanceMeters
                ? _value.distanceMeters
                : distanceMeters // ignore: cast_nullable_to_non_nullable
                      as double,
            travelDurationSeconds: null == travelDurationSeconds
                ? _value.travelDurationSeconds
                : travelDurationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteEstimateImplCopyWith<$Res>
    implements $RouteEstimateCopyWith<$Res> {
  factory _$$RouteEstimateImplCopyWith(
    _$RouteEstimateImpl value,
    $Res Function(_$RouteEstimateImpl) then,
  ) = __$$RouteEstimateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double distanceMeters, int travelDurationSeconds});
}

/// @nodoc
class __$$RouteEstimateImplCopyWithImpl<$Res>
    extends _$RouteEstimateCopyWithImpl<$Res, _$RouteEstimateImpl>
    implements _$$RouteEstimateImplCopyWith<$Res> {
  __$$RouteEstimateImplCopyWithImpl(
    _$RouteEstimateImpl _value,
    $Res Function(_$RouteEstimateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteEstimate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = null,
    Object? travelDurationSeconds = null,
  }) {
    return _then(
      _$RouteEstimateImpl(
        distanceMeters: null == distanceMeters
            ? _value.distanceMeters
            : distanceMeters // ignore: cast_nullable_to_non_nullable
                  as double,
        travelDurationSeconds: null == travelDurationSeconds
            ? _value.travelDurationSeconds
            : travelDurationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RouteEstimateImpl implements _RouteEstimate {
  const _$RouteEstimateImpl({
    required this.distanceMeters,
    required this.travelDurationSeconds,
  });

  @override
  final double distanceMeters;
  @override
  final int travelDurationSeconds;

  @override
  String toString() {
    return 'RouteEstimate(distanceMeters: $distanceMeters, travelDurationSeconds: $travelDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteEstimateImpl &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.travelDurationSeconds, travelDurationSeconds) ||
                other.travelDurationSeconds == travelDurationSeconds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceMeters, travelDurationSeconds);

  /// Create a copy of RouteEstimate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteEstimateImplCopyWith<_$RouteEstimateImpl> get copyWith =>
      __$$RouteEstimateImplCopyWithImpl<_$RouteEstimateImpl>(this, _$identity);
}

abstract class _RouteEstimate implements RouteEstimate {
  const factory _RouteEstimate({
    required final double distanceMeters,
    required final int travelDurationSeconds,
  }) = _$RouteEstimateImpl;

  @override
  double get distanceMeters;
  @override
  int get travelDurationSeconds;

  /// Create a copy of RouteEstimate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteEstimateImplCopyWith<_$RouteEstimateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
