// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_pricing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderPricing _$OrderPricingFromJson(Map<String, dynamic> json) {
  return _OrderPricing.fromJson(json);
}

/// @nodoc
mixin _$OrderPricing {
  Money get subtotal => throw _privateConstructorUsedError;
  Money get deliveryFee => throw _privateConstructorUsedError;
  Money get serviceFee => throw _privateConstructorUsedError;
  Money get discountTotal => throw _privateConstructorUsedError;
  Money get couponDiscount => throw _privateConstructorUsedError;
  Money get freeDeliverySavings => throw _privateConstructorUsedError;
  Money get taxAmount => throw _privateConstructorUsedError;
  Money get grandTotal => throw _privateConstructorUsedError;
  CommissionBreakdown get commission => throw _privateConstructorUsedError;
  String? get appliedCouponCode => throw _privateConstructorUsedError;
  String? get promotionId => throw _privateConstructorUsedError;

  /// Serializes this OrderPricing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPricingCopyWith<OrderPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPricingCopyWith<$Res> {
  factory $OrderPricingCopyWith(
    OrderPricing value,
    $Res Function(OrderPricing) then,
  ) = _$OrderPricingCopyWithImpl<$Res, OrderPricing>;
  @useResult
  $Res call({
    Money subtotal,
    Money deliveryFee,
    Money serviceFee,
    Money discountTotal,
    Money couponDiscount,
    Money freeDeliverySavings,
    Money taxAmount,
    Money grandTotal,
    CommissionBreakdown commission,
    String? appliedCouponCode,
    String? promotionId,
  });

  $MoneyCopyWith<$Res> get subtotal;
  $MoneyCopyWith<$Res> get deliveryFee;
  $MoneyCopyWith<$Res> get serviceFee;
  $MoneyCopyWith<$Res> get discountTotal;
  $MoneyCopyWith<$Res> get couponDiscount;
  $MoneyCopyWith<$Res> get freeDeliverySavings;
  $MoneyCopyWith<$Res> get taxAmount;
  $MoneyCopyWith<$Res> get grandTotal;
  $CommissionBreakdownCopyWith<$Res> get commission;
}

/// @nodoc
class _$OrderPricingCopyWithImpl<$Res, $Val extends OrderPricing>
    implements $OrderPricingCopyWith<$Res> {
  _$OrderPricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? deliveryFee = null,
    Object? serviceFee = null,
    Object? discountTotal = null,
    Object? couponDiscount = null,
    Object? freeDeliverySavings = null,
    Object? taxAmount = null,
    Object? grandTotal = null,
    Object? commission = null,
    Object? appliedCouponCode = freezed,
    Object? promotionId = freezed,
  }) {
    return _then(
      _value.copyWith(
            subtotal: null == subtotal
                ? _value.subtotal
                : subtotal // ignore: cast_nullable_to_non_nullable
                      as Money,
            deliveryFee: null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                      as Money,
            serviceFee: null == serviceFee
                ? _value.serviceFee
                : serviceFee // ignore: cast_nullable_to_non_nullable
                      as Money,
            discountTotal: null == discountTotal
                ? _value.discountTotal
                : discountTotal // ignore: cast_nullable_to_non_nullable
                      as Money,
            couponDiscount: null == couponDiscount
                ? _value.couponDiscount
                : couponDiscount // ignore: cast_nullable_to_non_nullable
                      as Money,
            freeDeliverySavings: null == freeDeliverySavings
                ? _value.freeDeliverySavings
                : freeDeliverySavings // ignore: cast_nullable_to_non_nullable
                      as Money,
            taxAmount: null == taxAmount
                ? _value.taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                      as Money,
            grandTotal: null == grandTotal
                ? _value.grandTotal
                : grandTotal // ignore: cast_nullable_to_non_nullable
                      as Money,
            commission: null == commission
                ? _value.commission
                : commission // ignore: cast_nullable_to_non_nullable
                      as CommissionBreakdown,
            appliedCouponCode: freezed == appliedCouponCode
                ? _value.appliedCouponCode
                : appliedCouponCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            promotionId: freezed == promotionId
                ? _value.promotionId
                : promotionId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get subtotal {
    return $MoneyCopyWith<$Res>(_value.subtotal, (value) {
      return _then(_value.copyWith(subtotal: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get deliveryFee {
    return $MoneyCopyWith<$Res>(_value.deliveryFee, (value) {
      return _then(_value.copyWith(deliveryFee: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get serviceFee {
    return $MoneyCopyWith<$Res>(_value.serviceFee, (value) {
      return _then(_value.copyWith(serviceFee: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get discountTotal {
    return $MoneyCopyWith<$Res>(_value.discountTotal, (value) {
      return _then(_value.copyWith(discountTotal: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get couponDiscount {
    return $MoneyCopyWith<$Res>(_value.couponDiscount, (value) {
      return _then(_value.copyWith(couponDiscount: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get freeDeliverySavings {
    return $MoneyCopyWith<$Res>(_value.freeDeliverySavings, (value) {
      return _then(_value.copyWith(freeDeliverySavings: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get taxAmount {
    return $MoneyCopyWith<$Res>(_value.taxAmount, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get grandTotal {
    return $MoneyCopyWith<$Res>(_value.grandTotal, (value) {
      return _then(_value.copyWith(grandTotal: value) as $Val);
    });
  }

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommissionBreakdownCopyWith<$Res> get commission {
    return $CommissionBreakdownCopyWith<$Res>(_value.commission, (value) {
      return _then(_value.copyWith(commission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPricingImplCopyWith<$Res>
    implements $OrderPricingCopyWith<$Res> {
  factory _$$OrderPricingImplCopyWith(
    _$OrderPricingImpl value,
    $Res Function(_$OrderPricingImpl) then,
  ) = __$$OrderPricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Money subtotal,
    Money deliveryFee,
    Money serviceFee,
    Money discountTotal,
    Money couponDiscount,
    Money freeDeliverySavings,
    Money taxAmount,
    Money grandTotal,
    CommissionBreakdown commission,
    String? appliedCouponCode,
    String? promotionId,
  });

  @override
  $MoneyCopyWith<$Res> get subtotal;
  @override
  $MoneyCopyWith<$Res> get deliveryFee;
  @override
  $MoneyCopyWith<$Res> get serviceFee;
  @override
  $MoneyCopyWith<$Res> get discountTotal;
  @override
  $MoneyCopyWith<$Res> get couponDiscount;
  @override
  $MoneyCopyWith<$Res> get freeDeliverySavings;
  @override
  $MoneyCopyWith<$Res> get taxAmount;
  @override
  $MoneyCopyWith<$Res> get grandTotal;
  @override
  $CommissionBreakdownCopyWith<$Res> get commission;
}

/// @nodoc
class __$$OrderPricingImplCopyWithImpl<$Res>
    extends _$OrderPricingCopyWithImpl<$Res, _$OrderPricingImpl>
    implements _$$OrderPricingImplCopyWith<$Res> {
  __$$OrderPricingImplCopyWithImpl(
    _$OrderPricingImpl _value,
    $Res Function(_$OrderPricingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? deliveryFee = null,
    Object? serviceFee = null,
    Object? discountTotal = null,
    Object? couponDiscount = null,
    Object? freeDeliverySavings = null,
    Object? taxAmount = null,
    Object? grandTotal = null,
    Object? commission = null,
    Object? appliedCouponCode = freezed,
    Object? promotionId = freezed,
  }) {
    return _then(
      _$OrderPricingImpl(
        subtotal: null == subtotal
            ? _value.subtotal
            : subtotal // ignore: cast_nullable_to_non_nullable
                  as Money,
        deliveryFee: null == deliveryFee
            ? _value.deliveryFee
            : deliveryFee // ignore: cast_nullable_to_non_nullable
                  as Money,
        serviceFee: null == serviceFee
            ? _value.serviceFee
            : serviceFee // ignore: cast_nullable_to_non_nullable
                  as Money,
        discountTotal: null == discountTotal
            ? _value.discountTotal
            : discountTotal // ignore: cast_nullable_to_non_nullable
                  as Money,
        couponDiscount: null == couponDiscount
            ? _value.couponDiscount
            : couponDiscount // ignore: cast_nullable_to_non_nullable
                  as Money,
        freeDeliverySavings: null == freeDeliverySavings
            ? _value.freeDeliverySavings
            : freeDeliverySavings // ignore: cast_nullable_to_non_nullable
                  as Money,
        taxAmount: null == taxAmount
            ? _value.taxAmount
            : taxAmount // ignore: cast_nullable_to_non_nullable
                  as Money,
        grandTotal: null == grandTotal
            ? _value.grandTotal
            : grandTotal // ignore: cast_nullable_to_non_nullable
                  as Money,
        commission: null == commission
            ? _value.commission
            : commission // ignore: cast_nullable_to_non_nullable
                  as CommissionBreakdown,
        appliedCouponCode: freezed == appliedCouponCode
            ? _value.appliedCouponCode
            : appliedCouponCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        promotionId: freezed == promotionId
            ? _value.promotionId
            : promotionId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPricingImpl extends _OrderPricing {
  const _$OrderPricingImpl({
    required this.subtotal,
    required this.deliveryFee,
    this.serviceFee = Money.zero,
    this.discountTotal = Money.zero,
    this.couponDiscount = Money.zero,
    this.freeDeliverySavings = Money.zero,
    required this.taxAmount,
    required this.grandTotal,
    required this.commission,
    this.appliedCouponCode,
    this.promotionId,
  }) : super._();

  factory _$OrderPricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPricingImplFromJson(json);

  @override
  final Money subtotal;
  @override
  final Money deliveryFee;
  @override
  @JsonKey()
  final Money serviceFee;
  @override
  @JsonKey()
  final Money discountTotal;
  @override
  @JsonKey()
  final Money couponDiscount;
  @override
  @JsonKey()
  final Money freeDeliverySavings;
  @override
  final Money taxAmount;
  @override
  final Money grandTotal;
  @override
  final CommissionBreakdown commission;
  @override
  final String? appliedCouponCode;
  @override
  final String? promotionId;

  @override
  String toString() {
    return 'OrderPricing(subtotal: $subtotal, deliveryFee: $deliveryFee, serviceFee: $serviceFee, discountTotal: $discountTotal, couponDiscount: $couponDiscount, freeDeliverySavings: $freeDeliverySavings, taxAmount: $taxAmount, grandTotal: $grandTotal, commission: $commission, appliedCouponCode: $appliedCouponCode, promotionId: $promotionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPricingImpl &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.discountTotal, discountTotal) ||
                other.discountTotal == discountTotal) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.freeDeliverySavings, freeDeliverySavings) ||
                other.freeDeliverySavings == freeDeliverySavings) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.appliedCouponCode, appliedCouponCode) ||
                other.appliedCouponCode == appliedCouponCode) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    subtotal,
    deliveryFee,
    serviceFee,
    discountTotal,
    couponDiscount,
    freeDeliverySavings,
    taxAmount,
    grandTotal,
    commission,
    appliedCouponCode,
    promotionId,
  );

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPricingImplCopyWith<_$OrderPricingImpl> get copyWith =>
      __$$OrderPricingImplCopyWithImpl<_$OrderPricingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPricingImplToJson(this);
  }
}

abstract class _OrderPricing extends OrderPricing {
  const factory _OrderPricing({
    required final Money subtotal,
    required final Money deliveryFee,
    final Money serviceFee,
    final Money discountTotal,
    final Money couponDiscount,
    final Money freeDeliverySavings,
    required final Money taxAmount,
    required final Money grandTotal,
    required final CommissionBreakdown commission,
    final String? appliedCouponCode,
    final String? promotionId,
  }) = _$OrderPricingImpl;
  const _OrderPricing._() : super._();

  factory _OrderPricing.fromJson(Map<String, dynamic> json) =
      _$OrderPricingImpl.fromJson;

  @override
  Money get subtotal;
  @override
  Money get deliveryFee;
  @override
  Money get serviceFee;
  @override
  Money get discountTotal;
  @override
  Money get couponDiscount;
  @override
  Money get freeDeliverySavings;
  @override
  Money get taxAmount;
  @override
  Money get grandTotal;
  @override
  CommissionBreakdown get commission;
  @override
  String? get appliedCouponCode;
  @override
  String? get promotionId;

  /// Create a copy of OrderPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPricingImplCopyWith<_$OrderPricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
