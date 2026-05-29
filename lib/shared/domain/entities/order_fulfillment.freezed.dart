// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_fulfillment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderRestaurantDetails _$OrderRestaurantDetailsFromJson(
  Map<String, dynamic> json,
) {
  return _OrderRestaurantDetails.fromJson(json);
}

/// @nodoc
mixin _$OrderRestaurantDetails {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  GeoLocation? get coordinates => throw _privateConstructorUsedError;

  /// Serializes this OrderRestaurantDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRestaurantDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRestaurantDetailsCopyWith<OrderRestaurantDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRestaurantDetailsCopyWith<$Res> {
  factory $OrderRestaurantDetailsCopyWith(
    OrderRestaurantDetails value,
    $Res Function(OrderRestaurantDetails) then,
  ) = _$OrderRestaurantDetailsCopyWithImpl<$Res, OrderRestaurantDetails>;
  @useResult
  $Res call({
    String id,
    String name,
    String? phone,
    String? address,
    GeoLocation? coordinates,
  });

  $GeoLocationCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$OrderRestaurantDetailsCopyWithImpl<
  $Res,
  $Val extends OrderRestaurantDetails
>
    implements $OrderRestaurantDetailsCopyWith<$Res> {
  _$OrderRestaurantDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRestaurantDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            coordinates: freezed == coordinates
                ? _value.coordinates
                : coordinates // ignore: cast_nullable_to_non_nullable
                      as GeoLocation?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderRestaurantDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderRestaurantDetailsImplCopyWith<$Res>
    implements $OrderRestaurantDetailsCopyWith<$Res> {
  factory _$$OrderRestaurantDetailsImplCopyWith(
    _$OrderRestaurantDetailsImpl value,
    $Res Function(_$OrderRestaurantDetailsImpl) then,
  ) = __$$OrderRestaurantDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? phone,
    String? address,
    GeoLocation? coordinates,
  });

  @override
  $GeoLocationCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$OrderRestaurantDetailsImplCopyWithImpl<$Res>
    extends
        _$OrderRestaurantDetailsCopyWithImpl<$Res, _$OrderRestaurantDetailsImpl>
    implements _$$OrderRestaurantDetailsImplCopyWith<$Res> {
  __$$OrderRestaurantDetailsImplCopyWithImpl(
    _$OrderRestaurantDetailsImpl _value,
    $Res Function(_$OrderRestaurantDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderRestaurantDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(
      _$OrderRestaurantDetailsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        coordinates: freezed == coordinates
            ? _value.coordinates
            : coordinates // ignore: cast_nullable_to_non_nullable
                  as GeoLocation?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRestaurantDetailsImpl implements _OrderRestaurantDetails {
  const _$OrderRestaurantDetailsImpl({
    required this.id,
    required this.name,
    this.phone,
    this.address,
    this.coordinates,
  });

  factory _$OrderRestaurantDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRestaurantDetailsImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final GeoLocation? coordinates;

  @override
  String toString() {
    return 'OrderRestaurantDetails(id: $id, name: $name, phone: $phone, address: $address, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRestaurantDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, address, coordinates);

  /// Create a copy of OrderRestaurantDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRestaurantDetailsImplCopyWith<_$OrderRestaurantDetailsImpl>
  get copyWith =>
      __$$OrderRestaurantDetailsImplCopyWithImpl<_$OrderRestaurantDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRestaurantDetailsImplToJson(this);
  }
}

abstract class _OrderRestaurantDetails implements OrderRestaurantDetails {
  const factory _OrderRestaurantDetails({
    required final String id,
    required final String name,
    final String? phone,
    final String? address,
    final GeoLocation? coordinates,
  }) = _$OrderRestaurantDetailsImpl;

  factory _OrderRestaurantDetails.fromJson(Map<String, dynamic> json) =
      _$OrderRestaurantDetailsImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  GeoLocation? get coordinates;

  /// Create a copy of OrderRestaurantDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRestaurantDetailsImplCopyWith<_$OrderRestaurantDetailsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DriverSummary _$DriverSummaryFromJson(Map<String, dynamic> json) {
  return _DriverSummary.fromJson(json);
}

/// @nodoc
mixin _$DriverSummary {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  DriverVehicleType get vehicleType => throw _privateConstructorUsedError;

  /// Serializes this DriverSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverSummaryCopyWith<DriverSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverSummaryCopyWith<$Res> {
  factory $DriverSummaryCopyWith(
    DriverSummary value,
    $Res Function(DriverSummary) then,
  ) = _$DriverSummaryCopyWithImpl<$Res, DriverSummary>;
  @useResult
  $Res call({
    String id,
    String name,
    String phone,
    double? rating,
    DriverVehicleType vehicleType,
  });
}

/// @nodoc
class _$DriverSummaryCopyWithImpl<$Res, $Val extends DriverSummary>
    implements $DriverSummaryCopyWith<$Res> {
  _$DriverSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? rating = freezed,
    Object? vehicleType = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double?,
            vehicleType: null == vehicleType
                ? _value.vehicleType
                : vehicleType // ignore: cast_nullable_to_non_nullable
                      as DriverVehicleType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverSummaryImplCopyWith<$Res>
    implements $DriverSummaryCopyWith<$Res> {
  factory _$$DriverSummaryImplCopyWith(
    _$DriverSummaryImpl value,
    $Res Function(_$DriverSummaryImpl) then,
  ) = __$$DriverSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String phone,
    double? rating,
    DriverVehicleType vehicleType,
  });
}

/// @nodoc
class __$$DriverSummaryImplCopyWithImpl<$Res>
    extends _$DriverSummaryCopyWithImpl<$Res, _$DriverSummaryImpl>
    implements _$$DriverSummaryImplCopyWith<$Res> {
  __$$DriverSummaryImplCopyWithImpl(
    _$DriverSummaryImpl _value,
    $Res Function(_$DriverSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? rating = freezed,
    Object? vehicleType = null,
  }) {
    return _then(
      _$DriverSummaryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: freezed == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double?,
        vehicleType: null == vehicleType
            ? _value.vehicleType
            : vehicleType // ignore: cast_nullable_to_non_nullable
                  as DriverVehicleType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverSummaryImpl implements _DriverSummary {
  const _$DriverSummaryImpl({
    required this.id,
    required this.name,
    required this.phone,
    this.rating,
    this.vehicleType = DriverVehicleType.unknown,
  });

  factory _$DriverSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverSummaryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final double? rating;
  @override
  @JsonKey()
  final DriverVehicleType vehicleType;

  @override
  String toString() {
    return 'DriverSummary(id: $id, name: $name, phone: $phone, rating: $rating, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, rating, vehicleType);

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverSummaryImplCopyWith<_$DriverSummaryImpl> get copyWith =>
      __$$DriverSummaryImplCopyWithImpl<_$DriverSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverSummaryImplToJson(this);
  }
}

abstract class _DriverSummary implements DriverSummary {
  const factory _DriverSummary({
    required final String id,
    required final String name,
    required final String phone,
    final double? rating,
    final DriverVehicleType vehicleType,
  }) = _$DriverSummaryImpl;

  factory _DriverSummary.fromJson(Map<String, dynamic> json) =
      _$DriverSummaryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  double? get rating;
  @override
  DriverVehicleType get vehicleType;

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverSummaryImplCopyWith<_$DriverSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerDeliveryContact _$CustomerDeliveryContactFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerDeliveryContact.fromJson(json);
}

/// @nodoc
mixin _$CustomerDeliveryContact {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this CustomerDeliveryContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDeliveryContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDeliveryContactCopyWith<CustomerDeliveryContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDeliveryContactCopyWith<$Res> {
  factory $CustomerDeliveryContactCopyWith(
    CustomerDeliveryContact value,
    $Res Function(CustomerDeliveryContact) then,
  ) = _$CustomerDeliveryContactCopyWithImpl<$Res, CustomerDeliveryContact>;
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class _$CustomerDeliveryContactCopyWithImpl<
  $Res,
  $Val extends CustomerDeliveryContact
>
    implements $CustomerDeliveryContactCopyWith<$Res> {
  _$CustomerDeliveryContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDeliveryContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? phone = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerDeliveryContactImplCopyWith<$Res>
    implements $CustomerDeliveryContactCopyWith<$Res> {
  factory _$$CustomerDeliveryContactImplCopyWith(
    _$CustomerDeliveryContactImpl value,
    $Res Function(_$CustomerDeliveryContactImpl) then,
  ) = __$$CustomerDeliveryContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class __$$CustomerDeliveryContactImplCopyWithImpl<$Res>
    extends
        _$CustomerDeliveryContactCopyWithImpl<
          $Res,
          _$CustomerDeliveryContactImpl
        >
    implements _$$CustomerDeliveryContactImplCopyWith<$Res> {
  __$$CustomerDeliveryContactImplCopyWithImpl(
    _$CustomerDeliveryContactImpl _value,
    $Res Function(_$CustomerDeliveryContactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerDeliveryContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? phone = null}) {
    return _then(
      _$CustomerDeliveryContactImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDeliveryContactImpl implements _CustomerDeliveryContact {
  const _$CustomerDeliveryContactImpl({
    required this.name,
    required this.phone,
  });

  factory _$CustomerDeliveryContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDeliveryContactImplFromJson(json);

  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'CustomerDeliveryContact(name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDeliveryContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone);

  /// Create a copy of CustomerDeliveryContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDeliveryContactImplCopyWith<_$CustomerDeliveryContactImpl>
  get copyWith =>
      __$$CustomerDeliveryContactImplCopyWithImpl<
        _$CustomerDeliveryContactImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDeliveryContactImplToJson(this);
  }
}

abstract class _CustomerDeliveryContact implements CustomerDeliveryContact {
  const factory _CustomerDeliveryContact({
    required final String name,
    required final String phone,
  }) = _$CustomerDeliveryContactImpl;

  factory _CustomerDeliveryContact.fromJson(Map<String, dynamic> json) =
      _$CustomerDeliveryContactImpl.fromJson;

  @override
  String get name;
  @override
  String get phone;

  /// Create a copy of CustomerDeliveryContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDeliveryContactImplCopyWith<_$CustomerDeliveryContactImpl>
  get copyWith => throw _privateConstructorUsedError;
}
