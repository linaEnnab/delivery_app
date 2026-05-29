// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commission_breakdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommissionBreakdown _$CommissionBreakdownFromJson(Map<String, dynamic> json) {
  return _CommissionBreakdown.fromJson(json);
}

/// @nodoc
mixin _$CommissionBreakdown {
  Money get platformCommission => throw _privateConstructorUsedError;
  Money get restaurantEarnings => throw _privateConstructorUsedError;
  Money get driverEarnings => throw _privateConstructorUsedError;
  Money get deliveryFee => throw _privateConstructorUsedError;
  Money get discountAbsorbedByPlatform => throw _privateConstructorUsedError;
  Money get discountAbsorbedByRestaurant => throw _privateConstructorUsedError;
  Money get taxAmount => throw _privateConstructorUsedError;

  /// Serializes this CommissionBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommissionBreakdownCopyWith<CommissionBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommissionBreakdownCopyWith<$Res> {
  factory $CommissionBreakdownCopyWith(
    CommissionBreakdown value,
    $Res Function(CommissionBreakdown) then,
  ) = _$CommissionBreakdownCopyWithImpl<$Res, CommissionBreakdown>;
  @useResult
  $Res call({
    Money platformCommission,
    Money restaurantEarnings,
    Money driverEarnings,
    Money deliveryFee,
    Money discountAbsorbedByPlatform,
    Money discountAbsorbedByRestaurant,
    Money taxAmount,
  });

  $MoneyCopyWith<$Res> get platformCommission;
  $MoneyCopyWith<$Res> get restaurantEarnings;
  $MoneyCopyWith<$Res> get driverEarnings;
  $MoneyCopyWith<$Res> get deliveryFee;
  $MoneyCopyWith<$Res> get discountAbsorbedByPlatform;
  $MoneyCopyWith<$Res> get discountAbsorbedByRestaurant;
  $MoneyCopyWith<$Res> get taxAmount;
}

/// @nodoc
class _$CommissionBreakdownCopyWithImpl<$Res, $Val extends CommissionBreakdown>
    implements $CommissionBreakdownCopyWith<$Res> {
  _$CommissionBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platformCommission = null,
    Object? restaurantEarnings = null,
    Object? driverEarnings = null,
    Object? deliveryFee = null,
    Object? discountAbsorbedByPlatform = null,
    Object? discountAbsorbedByRestaurant = null,
    Object? taxAmount = null,
  }) {
    return _then(
      _value.copyWith(
            platformCommission: null == platformCommission
                ? _value.platformCommission
                : platformCommission // ignore: cast_nullable_to_non_nullable
                      as Money,
            restaurantEarnings: null == restaurantEarnings
                ? _value.restaurantEarnings
                : restaurantEarnings // ignore: cast_nullable_to_non_nullable
                      as Money,
            driverEarnings: null == driverEarnings
                ? _value.driverEarnings
                : driverEarnings // ignore: cast_nullable_to_non_nullable
                      as Money,
            deliveryFee: null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                      as Money,
            discountAbsorbedByPlatform: null == discountAbsorbedByPlatform
                ? _value.discountAbsorbedByPlatform
                : discountAbsorbedByPlatform // ignore: cast_nullable_to_non_nullable
                      as Money,
            discountAbsorbedByRestaurant: null == discountAbsorbedByRestaurant
                ? _value.discountAbsorbedByRestaurant
                : discountAbsorbedByRestaurant // ignore: cast_nullable_to_non_nullable
                      as Money,
            taxAmount: null == taxAmount
                ? _value.taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                      as Money,
          )
          as $Val,
    );
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get platformCommission {
    return $MoneyCopyWith<$Res>(_value.platformCommission, (value) {
      return _then(_value.copyWith(platformCommission: value) as $Val);
    });
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get restaurantEarnings {
    return $MoneyCopyWith<$Res>(_value.restaurantEarnings, (value) {
      return _then(_value.copyWith(restaurantEarnings: value) as $Val);
    });
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get driverEarnings {
    return $MoneyCopyWith<$Res>(_value.driverEarnings, (value) {
      return _then(_value.copyWith(driverEarnings: value) as $Val);
    });
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get deliveryFee {
    return $MoneyCopyWith<$Res>(_value.deliveryFee, (value) {
      return _then(_value.copyWith(deliveryFee: value) as $Val);
    });
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get discountAbsorbedByPlatform {
    return $MoneyCopyWith<$Res>(_value.discountAbsorbedByPlatform, (value) {
      return _then(_value.copyWith(discountAbsorbedByPlatform: value) as $Val);
    });
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get discountAbsorbedByRestaurant {
    return $MoneyCopyWith<$Res>(_value.discountAbsorbedByRestaurant, (value) {
      return _then(
        _value.copyWith(discountAbsorbedByRestaurant: value) as $Val,
      );
    });
  }

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get taxAmount {
    return $MoneyCopyWith<$Res>(_value.taxAmount, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommissionBreakdownImplCopyWith<$Res>
    implements $CommissionBreakdownCopyWith<$Res> {
  factory _$$CommissionBreakdownImplCopyWith(
    _$CommissionBreakdownImpl value,
    $Res Function(_$CommissionBreakdownImpl) then,
  ) = __$$CommissionBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Money platformCommission,
    Money restaurantEarnings,
    Money driverEarnings,
    Money deliveryFee,
    Money discountAbsorbedByPlatform,
    Money discountAbsorbedByRestaurant,
    Money taxAmount,
  });

  @override
  $MoneyCopyWith<$Res> get platformCommission;
  @override
  $MoneyCopyWith<$Res> get restaurantEarnings;
  @override
  $MoneyCopyWith<$Res> get driverEarnings;
  @override
  $MoneyCopyWith<$Res> get deliveryFee;
  @override
  $MoneyCopyWith<$Res> get discountAbsorbedByPlatform;
  @override
  $MoneyCopyWith<$Res> get discountAbsorbedByRestaurant;
  @override
  $MoneyCopyWith<$Res> get taxAmount;
}

/// @nodoc
class __$$CommissionBreakdownImplCopyWithImpl<$Res>
    extends _$CommissionBreakdownCopyWithImpl<$Res, _$CommissionBreakdownImpl>
    implements _$$CommissionBreakdownImplCopyWith<$Res> {
  __$$CommissionBreakdownImplCopyWithImpl(
    _$CommissionBreakdownImpl _value,
    $Res Function(_$CommissionBreakdownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platformCommission = null,
    Object? restaurantEarnings = null,
    Object? driverEarnings = null,
    Object? deliveryFee = null,
    Object? discountAbsorbedByPlatform = null,
    Object? discountAbsorbedByRestaurant = null,
    Object? taxAmount = null,
  }) {
    return _then(
      _$CommissionBreakdownImpl(
        platformCommission: null == platformCommission
            ? _value.platformCommission
            : platformCommission // ignore: cast_nullable_to_non_nullable
                  as Money,
        restaurantEarnings: null == restaurantEarnings
            ? _value.restaurantEarnings
            : restaurantEarnings // ignore: cast_nullable_to_non_nullable
                  as Money,
        driverEarnings: null == driverEarnings
            ? _value.driverEarnings
            : driverEarnings // ignore: cast_nullable_to_non_nullable
                  as Money,
        deliveryFee: null == deliveryFee
            ? _value.deliveryFee
            : deliveryFee // ignore: cast_nullable_to_non_nullable
                  as Money,
        discountAbsorbedByPlatform: null == discountAbsorbedByPlatform
            ? _value.discountAbsorbedByPlatform
            : discountAbsorbedByPlatform // ignore: cast_nullable_to_non_nullable
                  as Money,
        discountAbsorbedByRestaurant: null == discountAbsorbedByRestaurant
            ? _value.discountAbsorbedByRestaurant
            : discountAbsorbedByRestaurant // ignore: cast_nullable_to_non_nullable
                  as Money,
        taxAmount: null == taxAmount
            ? _value.taxAmount
            : taxAmount // ignore: cast_nullable_to_non_nullable
                  as Money,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommissionBreakdownImpl implements _CommissionBreakdown {
  const _$CommissionBreakdownImpl({
    required this.platformCommission,
    required this.restaurantEarnings,
    required this.driverEarnings,
    required this.deliveryFee,
    this.discountAbsorbedByPlatform = Money.zero,
    this.discountAbsorbedByRestaurant = Money.zero,
    this.taxAmount = Money.zero,
  });

  factory _$CommissionBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommissionBreakdownImplFromJson(json);

  @override
  final Money platformCommission;
  @override
  final Money restaurantEarnings;
  @override
  final Money driverEarnings;
  @override
  final Money deliveryFee;
  @override
  @JsonKey()
  final Money discountAbsorbedByPlatform;
  @override
  @JsonKey()
  final Money discountAbsorbedByRestaurant;
  @override
  @JsonKey()
  final Money taxAmount;

  @override
  String toString() {
    return 'CommissionBreakdown(platformCommission: $platformCommission, restaurantEarnings: $restaurantEarnings, driverEarnings: $driverEarnings, deliveryFee: $deliveryFee, discountAbsorbedByPlatform: $discountAbsorbedByPlatform, discountAbsorbedByRestaurant: $discountAbsorbedByRestaurant, taxAmount: $taxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommissionBreakdownImpl &&
            (identical(other.platformCommission, platformCommission) ||
                other.platformCommission == platformCommission) &&
            (identical(other.restaurantEarnings, restaurantEarnings) ||
                other.restaurantEarnings == restaurantEarnings) &&
            (identical(other.driverEarnings, driverEarnings) ||
                other.driverEarnings == driverEarnings) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(
                  other.discountAbsorbedByPlatform,
                  discountAbsorbedByPlatform,
                ) ||
                other.discountAbsorbedByPlatform ==
                    discountAbsorbedByPlatform) &&
            (identical(
                  other.discountAbsorbedByRestaurant,
                  discountAbsorbedByRestaurant,
                ) ||
                other.discountAbsorbedByRestaurant ==
                    discountAbsorbedByRestaurant) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    platformCommission,
    restaurantEarnings,
    driverEarnings,
    deliveryFee,
    discountAbsorbedByPlatform,
    discountAbsorbedByRestaurant,
    taxAmount,
  );

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommissionBreakdownImplCopyWith<_$CommissionBreakdownImpl> get copyWith =>
      __$$CommissionBreakdownImplCopyWithImpl<_$CommissionBreakdownImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommissionBreakdownImplToJson(this);
  }
}

abstract class _CommissionBreakdown implements CommissionBreakdown {
  const factory _CommissionBreakdown({
    required final Money platformCommission,
    required final Money restaurantEarnings,
    required final Money driverEarnings,
    required final Money deliveryFee,
    final Money discountAbsorbedByPlatform,
    final Money discountAbsorbedByRestaurant,
    final Money taxAmount,
  }) = _$CommissionBreakdownImpl;

  factory _CommissionBreakdown.fromJson(Map<String, dynamic> json) =
      _$CommissionBreakdownImpl.fromJson;

  @override
  Money get platformCommission;
  @override
  Money get restaurantEarnings;
  @override
  Money get driverEarnings;
  @override
  Money get deliveryFee;
  @override
  Money get discountAbsorbedByPlatform;
  @override
  Money get discountAbsorbedByRestaurant;
  @override
  Money get taxAmount;

  /// Create a copy of CommissionBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommissionBreakdownImplCopyWith<_$CommissionBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
