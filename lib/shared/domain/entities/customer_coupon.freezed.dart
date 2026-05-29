// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerCoupon _$CustomerCouponFromJson(Map<String, dynamic> json) {
  return _CustomerCoupon.fromJson(json);
}

/// @nodoc
mixin _$CustomerCoupon {
  String get issuedId => throw _privateConstructorUsedError;
  Coupon get coupon => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  bool get isRedeemed => throw _privateConstructorUsedError;

  /// Serializes this CustomerCoupon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerCoupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCouponCopyWith<CustomerCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCouponCopyWith<$Res> {
  factory $CustomerCouponCopyWith(
    CustomerCoupon value,
    $Res Function(CustomerCoupon) then,
  ) = _$CustomerCouponCopyWithImpl<$Res, CustomerCoupon>;
  @useResult
  $Res call({
    String issuedId,
    Coupon coupon,
    DateTime? expiresAt,
    bool isRedeemed,
  });

  $CouponCopyWith<$Res> get coupon;
}

/// @nodoc
class _$CustomerCouponCopyWithImpl<$Res, $Val extends CustomerCoupon>
    implements $CustomerCouponCopyWith<$Res> {
  _$CustomerCouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerCoupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuedId = null,
    Object? coupon = null,
    Object? expiresAt = freezed,
    Object? isRedeemed = null,
  }) {
    return _then(
      _value.copyWith(
            issuedId: null == issuedId
                ? _value.issuedId
                : issuedId // ignore: cast_nullable_to_non_nullable
                      as String,
            coupon: null == coupon
                ? _value.coupon
                : coupon // ignore: cast_nullable_to_non_nullable
                      as Coupon,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isRedeemed: null == isRedeemed
                ? _value.isRedeemed
                : isRedeemed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerCoupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CouponCopyWith<$Res> get coupon {
    return $CouponCopyWith<$Res>(_value.coupon, (value) {
      return _then(_value.copyWith(coupon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerCouponImplCopyWith<$Res>
    implements $CustomerCouponCopyWith<$Res> {
  factory _$$CustomerCouponImplCopyWith(
    _$CustomerCouponImpl value,
    $Res Function(_$CustomerCouponImpl) then,
  ) = __$$CustomerCouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String issuedId,
    Coupon coupon,
    DateTime? expiresAt,
    bool isRedeemed,
  });

  @override
  $CouponCopyWith<$Res> get coupon;
}

/// @nodoc
class __$$CustomerCouponImplCopyWithImpl<$Res>
    extends _$CustomerCouponCopyWithImpl<$Res, _$CustomerCouponImpl>
    implements _$$CustomerCouponImplCopyWith<$Res> {
  __$$CustomerCouponImplCopyWithImpl(
    _$CustomerCouponImpl _value,
    $Res Function(_$CustomerCouponImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerCoupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuedId = null,
    Object? coupon = null,
    Object? expiresAt = freezed,
    Object? isRedeemed = null,
  }) {
    return _then(
      _$CustomerCouponImpl(
        issuedId: null == issuedId
            ? _value.issuedId
            : issuedId // ignore: cast_nullable_to_non_nullable
                  as String,
        coupon: null == coupon
            ? _value.coupon
            : coupon // ignore: cast_nullable_to_non_nullable
                  as Coupon,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isRedeemed: null == isRedeemed
            ? _value.isRedeemed
            : isRedeemed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerCouponImpl implements _CustomerCoupon {
  const _$CustomerCouponImpl({
    required this.issuedId,
    required this.coupon,
    this.expiresAt,
    this.isRedeemed = false,
  });

  factory _$CustomerCouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerCouponImplFromJson(json);

  @override
  final String issuedId;
  @override
  final Coupon coupon;
  @override
  final DateTime? expiresAt;
  @override
  @JsonKey()
  final bool isRedeemed;

  @override
  String toString() {
    return 'CustomerCoupon(issuedId: $issuedId, coupon: $coupon, expiresAt: $expiresAt, isRedeemed: $isRedeemed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCouponImpl &&
            (identical(other.issuedId, issuedId) ||
                other.issuedId == issuedId) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isRedeemed, isRedeemed) ||
                other.isRedeemed == isRedeemed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, issuedId, coupon, expiresAt, isRedeemed);

  /// Create a copy of CustomerCoupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCouponImplCopyWith<_$CustomerCouponImpl> get copyWith =>
      __$$CustomerCouponImplCopyWithImpl<_$CustomerCouponImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerCouponImplToJson(this);
  }
}

abstract class _CustomerCoupon implements CustomerCoupon {
  const factory _CustomerCoupon({
    required final String issuedId,
    required final Coupon coupon,
    final DateTime? expiresAt,
    final bool isRedeemed,
  }) = _$CustomerCouponImpl;

  factory _CustomerCoupon.fromJson(Map<String, dynamic> json) =
      _$CustomerCouponImpl.fromJson;

  @override
  String get issuedId;
  @override
  Coupon get coupon;
  @override
  DateTime? get expiresAt;
  @override
  bool get isRedeemed;

  /// Create a copy of CustomerCoupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerCouponImplCopyWith<_$CustomerCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
