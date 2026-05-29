// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  DiscountType get discountType => throw _privateConstructorUsedError;
  PromotionScope get scope => throw _privateConstructorUsedError;
  double? get percentageOff => throw _privateConstructorUsedError;
  Money? get fixedAmountOff => throw _privateConstructorUsedError;
  Money? get minimumOrderAmount => throw _privateConstructorUsedError;
  Money? get maximumDiscount => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validUntil => throw _privateConstructorUsedError;
  String? get restaurantId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this Coupon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call({
    String id,
    String code,
    DiscountType discountType,
    PromotionScope scope,
    double? percentageOff,
    Money? fixedAmountOff,
    Money? minimumOrderAmount,
    Money? maximumDiscount,
    DateTime? validFrom,
    DateTime? validUntil,
    String? restaurantId,
    bool isActive,
  });

  $MoneyCopyWith<$Res>? get fixedAmountOff;
  $MoneyCopyWith<$Res>? get minimumOrderAmount;
  $MoneyCopyWith<$Res>? get maximumDiscount;
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? discountType = null,
    Object? scope = null,
    Object? percentageOff = freezed,
    Object? fixedAmountOff = freezed,
    Object? minimumOrderAmount = freezed,
    Object? maximumDiscount = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? restaurantId = freezed,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            discountType: null == discountType
                ? _value.discountType
                : discountType // ignore: cast_nullable_to_non_nullable
                      as DiscountType,
            scope: null == scope
                ? _value.scope
                : scope // ignore: cast_nullable_to_non_nullable
                      as PromotionScope,
            percentageOff: freezed == percentageOff
                ? _value.percentageOff
                : percentageOff // ignore: cast_nullable_to_non_nullable
                      as double?,
            fixedAmountOff: freezed == fixedAmountOff
                ? _value.fixedAmountOff
                : fixedAmountOff // ignore: cast_nullable_to_non_nullable
                      as Money?,
            minimumOrderAmount: freezed == minimumOrderAmount
                ? _value.minimumOrderAmount
                : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
                      as Money?,
            maximumDiscount: freezed == maximumDiscount
                ? _value.maximumDiscount
                : maximumDiscount // ignore: cast_nullable_to_non_nullable
                      as Money?,
            validFrom: freezed == validFrom
                ? _value.validFrom
                : validFrom // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            validUntil: freezed == validUntil
                ? _value.validUntil
                : validUntil // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            restaurantId: freezed == restaurantId
                ? _value.restaurantId
                : restaurantId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get fixedAmountOff {
    if (_value.fixedAmountOff == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.fixedAmountOff!, (value) {
      return _then(_value.copyWith(fixedAmountOff: value) as $Val);
    });
  }

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get minimumOrderAmount {
    if (_value.minimumOrderAmount == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.minimumOrderAmount!, (value) {
      return _then(_value.copyWith(minimumOrderAmount: value) as $Val);
    });
  }

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get maximumDiscount {
    if (_value.maximumDiscount == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.maximumDiscount!, (value) {
      return _then(_value.copyWith(maximumDiscount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponImplCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$CouponImplCopyWith(
    _$CouponImpl value,
    $Res Function(_$CouponImpl) then,
  ) = __$$CouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String code,
    DiscountType discountType,
    PromotionScope scope,
    double? percentageOff,
    Money? fixedAmountOff,
    Money? minimumOrderAmount,
    Money? maximumDiscount,
    DateTime? validFrom,
    DateTime? validUntil,
    String? restaurantId,
    bool isActive,
  });

  @override
  $MoneyCopyWith<$Res>? get fixedAmountOff;
  @override
  $MoneyCopyWith<$Res>? get minimumOrderAmount;
  @override
  $MoneyCopyWith<$Res>? get maximumDiscount;
}

/// @nodoc
class __$$CouponImplCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$CouponImpl>
    implements _$$CouponImplCopyWith<$Res> {
  __$$CouponImplCopyWithImpl(
    _$CouponImpl _value,
    $Res Function(_$CouponImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? discountType = null,
    Object? scope = null,
    Object? percentageOff = freezed,
    Object? fixedAmountOff = freezed,
    Object? minimumOrderAmount = freezed,
    Object? maximumDiscount = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? restaurantId = freezed,
    Object? isActive = null,
  }) {
    return _then(
      _$CouponImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        discountType: null == discountType
            ? _value.discountType
            : discountType // ignore: cast_nullable_to_non_nullable
                  as DiscountType,
        scope: null == scope
            ? _value.scope
            : scope // ignore: cast_nullable_to_non_nullable
                  as PromotionScope,
        percentageOff: freezed == percentageOff
            ? _value.percentageOff
            : percentageOff // ignore: cast_nullable_to_non_nullable
                  as double?,
        fixedAmountOff: freezed == fixedAmountOff
            ? _value.fixedAmountOff
            : fixedAmountOff // ignore: cast_nullable_to_non_nullable
                  as Money?,
        minimumOrderAmount: freezed == minimumOrderAmount
            ? _value.minimumOrderAmount
            : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
                  as Money?,
        maximumDiscount: freezed == maximumDiscount
            ? _value.maximumDiscount
            : maximumDiscount // ignore: cast_nullable_to_non_nullable
                  as Money?,
        validFrom: freezed == validFrom
            ? _value.validFrom
            : validFrom // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        validUntil: freezed == validUntil
            ? _value.validUntil
            : validUntil // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        restaurantId: freezed == restaurantId
            ? _value.restaurantId
            : restaurantId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponImpl implements _Coupon {
  const _$CouponImpl({
    required this.id,
    required this.code,
    required this.discountType,
    required this.scope,
    this.percentageOff,
    this.fixedAmountOff,
    this.minimumOrderAmount,
    this.maximumDiscount,
    this.validFrom,
    this.validUntil,
    this.restaurantId,
    this.isActive = true,
  });

  factory _$CouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponImplFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final DiscountType discountType;
  @override
  final PromotionScope scope;
  @override
  final double? percentageOff;
  @override
  final Money? fixedAmountOff;
  @override
  final Money? minimumOrderAmount;
  @override
  final Money? maximumDiscount;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final String? restaurantId;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'Coupon(id: $id, code: $code, discountType: $discountType, scope: $scope, percentageOff: $percentageOff, fixedAmountOff: $fixedAmountOff, minimumOrderAmount: $minimumOrderAmount, maximumDiscount: $maximumDiscount, validFrom: $validFrom, validUntil: $validUntil, restaurantId: $restaurantId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.percentageOff, percentageOff) ||
                other.percentageOff == percentageOff) &&
            (identical(other.fixedAmountOff, fixedAmountOff) ||
                other.fixedAmountOff == fixedAmountOff) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.maximumDiscount, maximumDiscount) ||
                other.maximumDiscount == maximumDiscount) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    code,
    discountType,
    scope,
    percentageOff,
    fixedAmountOff,
    minimumOrderAmount,
    maximumDiscount,
    validFrom,
    validUntil,
    restaurantId,
    isActive,
  );

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      __$$CouponImplCopyWithImpl<_$CouponImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponImplToJson(this);
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon({
    required final String id,
    required final String code,
    required final DiscountType discountType,
    required final PromotionScope scope,
    final double? percentageOff,
    final Money? fixedAmountOff,
    final Money? minimumOrderAmount,
    final Money? maximumDiscount,
    final DateTime? validFrom,
    final DateTime? validUntil,
    final String? restaurantId,
    final bool isActive,
  }) = _$CouponImpl;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$CouponImpl.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  DiscountType get discountType;
  @override
  PromotionScope get scope;
  @override
  double? get percentageOff;
  @override
  Money? get fixedAmountOff;
  @override
  Money? get minimumOrderAmount;
  @override
  Money? get maximumDiscount;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validUntil;
  @override
  String? get restaurantId;
  @override
  bool get isActive;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
