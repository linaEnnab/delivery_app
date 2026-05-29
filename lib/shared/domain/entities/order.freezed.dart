// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  OrderRestaurantDetails get restaurant => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  List<CartItem> get items => throw _privateConstructorUsedError;
  OrderPricing get pricing => throw _privateConstructorUsedError;
  Address get deliveryAddress => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  CustomerDeliveryContact? get customerContact =>
      throw _privateConstructorUsedError;
  DriverSummary? get driver => throw _privateConstructorUsedError;

  /// Loyalty points earned when the order completes (API snapshot).
  int get loyaltyPointsEarned => throw _privateConstructorUsedError;
  DateTime? get placedAt => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  bool get isReviewSubmitted => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({
    String id,
    String orderNumber,
    OrderRestaurantDetails restaurant,
    OrderStatus status,
    List<CartItem> items,
    OrderPricing pricing,
    Address deliveryAddress,
    PaymentMethod paymentMethod,
    CustomerDeliveryContact? customerContact,
    DriverSummary? driver,
    int loyaltyPointsEarned,
    DateTime? placedAt,
    DateTime? deliveredAt,
    bool isReviewSubmitted,
  });

  $OrderRestaurantDetailsCopyWith<$Res> get restaurant;
  $OrderPricingCopyWith<$Res> get pricing;
  $AddressCopyWith<$Res> get deliveryAddress;
  $CustomerDeliveryContactCopyWith<$Res>? get customerContact;
  $DriverSummaryCopyWith<$Res>? get driver;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? restaurant = null,
    Object? status = null,
    Object? items = null,
    Object? pricing = null,
    Object? deliveryAddress = null,
    Object? paymentMethod = null,
    Object? customerContact = freezed,
    Object? driver = freezed,
    Object? loyaltyPointsEarned = null,
    Object? placedAt = freezed,
    Object? deliveredAt = freezed,
    Object? isReviewSubmitted = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            orderNumber: null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            restaurant: null == restaurant
                ? _value.restaurant
                : restaurant // ignore: cast_nullable_to_non_nullable
                      as OrderRestaurantDetails,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as OrderStatus,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<CartItem>,
            pricing: null == pricing
                ? _value.pricing
                : pricing // ignore: cast_nullable_to_non_nullable
                      as OrderPricing,
            deliveryAddress: null == deliveryAddress
                ? _value.deliveryAddress
                : deliveryAddress // ignore: cast_nullable_to_non_nullable
                      as Address,
            paymentMethod: null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as PaymentMethod,
            customerContact: freezed == customerContact
                ? _value.customerContact
                : customerContact // ignore: cast_nullable_to_non_nullable
                      as CustomerDeliveryContact?,
            driver: freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                      as DriverSummary?,
            loyaltyPointsEarned: null == loyaltyPointsEarned
                ? _value.loyaltyPointsEarned
                : loyaltyPointsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            placedAt: freezed == placedAt
                ? _value.placedAt
                : placedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deliveredAt: freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isReviewSubmitted: null == isReviewSubmitted
                ? _value.isReviewSubmitted
                : isReviewSubmitted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderRestaurantDetailsCopyWith<$Res> get restaurant {
    return $OrderRestaurantDetailsCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPricingCopyWith<$Res> get pricing {
    return $OrderPricingCopyWith<$Res>(_value.pricing, (value) {
      return _then(_value.copyWith(pricing: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get deliveryAddress {
    return $AddressCopyWith<$Res>(_value.deliveryAddress, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDeliveryContactCopyWith<$Res>? get customerContact {
    if (_value.customerContact == null) {
      return null;
    }

    return $CustomerDeliveryContactCopyWith<$Res>(_value.customerContact!, (
      value,
    ) {
      return _then(_value.copyWith(customerContact: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverSummaryCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverSummaryCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
    _$OrderImpl value,
    $Res Function(_$OrderImpl) then,
  ) = __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String orderNumber,
    OrderRestaurantDetails restaurant,
    OrderStatus status,
    List<CartItem> items,
    OrderPricing pricing,
    Address deliveryAddress,
    PaymentMethod paymentMethod,
    CustomerDeliveryContact? customerContact,
    DriverSummary? driver,
    int loyaltyPointsEarned,
    DateTime? placedAt,
    DateTime? deliveredAt,
    bool isReviewSubmitted,
  });

  @override
  $OrderRestaurantDetailsCopyWith<$Res> get restaurant;
  @override
  $OrderPricingCopyWith<$Res> get pricing;
  @override
  $AddressCopyWith<$Res> get deliveryAddress;
  @override
  $CustomerDeliveryContactCopyWith<$Res>? get customerContact;
  @override
  $DriverSummaryCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
    _$OrderImpl _value,
    $Res Function(_$OrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? restaurant = null,
    Object? status = null,
    Object? items = null,
    Object? pricing = null,
    Object? deliveryAddress = null,
    Object? paymentMethod = null,
    Object? customerContact = freezed,
    Object? driver = freezed,
    Object? loyaltyPointsEarned = null,
    Object? placedAt = freezed,
    Object? deliveredAt = freezed,
    Object? isReviewSubmitted = null,
  }) {
    return _then(
      _$OrderImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        orderNumber: null == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        restaurant: null == restaurant
            ? _value.restaurant
            : restaurant // ignore: cast_nullable_to_non_nullable
                  as OrderRestaurantDetails,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as OrderStatus,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<CartItem>,
        pricing: null == pricing
            ? _value.pricing
            : pricing // ignore: cast_nullable_to_non_nullable
                  as OrderPricing,
        deliveryAddress: null == deliveryAddress
            ? _value.deliveryAddress
            : deliveryAddress // ignore: cast_nullable_to_non_nullable
                  as Address,
        paymentMethod: null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as PaymentMethod,
        customerContact: freezed == customerContact
            ? _value.customerContact
            : customerContact // ignore: cast_nullable_to_non_nullable
                  as CustomerDeliveryContact?,
        driver: freezed == driver
            ? _value.driver
            : driver // ignore: cast_nullable_to_non_nullable
                  as DriverSummary?,
        loyaltyPointsEarned: null == loyaltyPointsEarned
            ? _value.loyaltyPointsEarned
            : loyaltyPointsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        placedAt: freezed == placedAt
            ? _value.placedAt
            : placedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deliveredAt: freezed == deliveredAt
            ? _value.deliveredAt
            : deliveredAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isReviewSubmitted: null == isReviewSubmitted
            ? _value.isReviewSubmitted
            : isReviewSubmitted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl extends _Order {
  const _$OrderImpl({
    required this.id,
    required this.orderNumber,
    required this.restaurant,
    required this.status,
    required final List<CartItem> items,
    required this.pricing,
    required this.deliveryAddress,
    required this.paymentMethod,
    this.customerContact,
    this.driver,
    this.loyaltyPointsEarned = 0,
    this.placedAt,
    this.deliveredAt,
    this.isReviewSubmitted = false,
  }) : _items = items,
       super._();

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final String orderNumber;
  @override
  final OrderRestaurantDetails restaurant;
  @override
  final OrderStatus status;
  final List<CartItem> _items;
  @override
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderPricing pricing;
  @override
  final Address deliveryAddress;
  @override
  final PaymentMethod paymentMethod;
  @override
  final CustomerDeliveryContact? customerContact;
  @override
  final DriverSummary? driver;

  /// Loyalty points earned when the order completes (API snapshot).
  @override
  @JsonKey()
  final int loyaltyPointsEarned;
  @override
  final DateTime? placedAt;
  @override
  final DateTime? deliveredAt;
  @override
  @JsonKey()
  final bool isReviewSubmitted;

  @override
  String toString() {
    return 'Order(id: $id, orderNumber: $orderNumber, restaurant: $restaurant, status: $status, items: $items, pricing: $pricing, deliveryAddress: $deliveryAddress, paymentMethod: $paymentMethod, customerContact: $customerContact, driver: $driver, loyaltyPointsEarned: $loyaltyPointsEarned, placedAt: $placedAt, deliveredAt: $deliveredAt, isReviewSubmitted: $isReviewSubmitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.customerContact, customerContact) ||
                other.customerContact == customerContact) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.loyaltyPointsEarned, loyaltyPointsEarned) ||
                other.loyaltyPointsEarned == loyaltyPointsEarned) &&
            (identical(other.placedAt, placedAt) ||
                other.placedAt == placedAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.isReviewSubmitted, isReviewSubmitted) ||
                other.isReviewSubmitted == isReviewSubmitted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderNumber,
    restaurant,
    status,
    const DeepCollectionEquality().hash(_items),
    pricing,
    deliveryAddress,
    paymentMethod,
    customerContact,
    driver,
    loyaltyPointsEarned,
    placedAt,
    deliveredAt,
    isReviewSubmitted,
  );

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(this);
  }
}

abstract class _Order extends Order {
  const factory _Order({
    required final String id,
    required final String orderNumber,
    required final OrderRestaurantDetails restaurant,
    required final OrderStatus status,
    required final List<CartItem> items,
    required final OrderPricing pricing,
    required final Address deliveryAddress,
    required final PaymentMethod paymentMethod,
    final CustomerDeliveryContact? customerContact,
    final DriverSummary? driver,
    final int loyaltyPointsEarned,
    final DateTime? placedAt,
    final DateTime? deliveredAt,
    final bool isReviewSubmitted,
  }) = _$OrderImpl;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get orderNumber;
  @override
  OrderRestaurantDetails get restaurant;
  @override
  OrderStatus get status;
  @override
  List<CartItem> get items;
  @override
  OrderPricing get pricing;
  @override
  Address get deliveryAddress;
  @override
  PaymentMethod get paymentMethod;
  @override
  CustomerDeliveryContact? get customerContact;
  @override
  DriverSummary? get driver;

  /// Loyalty points earned when the order completes (API snapshot).
  @override
  int get loyaltyPointsEarned;
  @override
  DateTime? get placedAt;
  @override
  DateTime? get deliveredAt;
  @override
  bool get isReviewSubmitted;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
