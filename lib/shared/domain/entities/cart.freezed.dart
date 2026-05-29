// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  String get id => throw _privateConstructorUsedError;
  String get restaurantId => throw _privateConstructorUsedError;
  List<CartItem> get items => throw _privateConstructorUsedError;
  OrderPricing? get pricingPreview => throw _privateConstructorUsedError;

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({
    String id,
    String restaurantId,
    List<CartItem> items,
    OrderPricing? pricingPreview,
  });

  $OrderPricingCopyWith<$Res>? get pricingPreview;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? items = null,
    Object? pricingPreview = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            restaurantId: null == restaurantId
                ? _value.restaurantId
                : restaurantId // ignore: cast_nullable_to_non_nullable
                      as String,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<CartItem>,
            pricingPreview: freezed == pricingPreview
                ? _value.pricingPreview
                : pricingPreview // ignore: cast_nullable_to_non_nullable
                      as OrderPricing?,
          )
          as $Val,
    );
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPricingCopyWith<$Res>? get pricingPreview {
    if (_value.pricingPreview == null) {
      return null;
    }

    return $OrderPricingCopyWith<$Res>(_value.pricingPreview!, (value) {
      return _then(_value.copyWith(pricingPreview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
    _$CartImpl value,
    $Res Function(_$CartImpl) then,
  ) = __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String restaurantId,
    List<CartItem> items,
    OrderPricing? pricingPreview,
  });

  @override
  $OrderPricingCopyWith<$Res>? get pricingPreview;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
    : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? items = null,
    Object? pricingPreview = freezed,
  }) {
    return _then(
      _$CartImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        restaurantId: null == restaurantId
            ? _value.restaurantId
            : restaurantId // ignore: cast_nullable_to_non_nullable
                  as String,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<CartItem>,
        pricingPreview: freezed == pricingPreview
            ? _value.pricingPreview
            : pricingPreview // ignore: cast_nullable_to_non_nullable
                  as OrderPricing?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  const _$CartImpl({
    required this.id,
    required this.restaurantId,
    required final List<CartItem> items,
    this.pricingPreview,
  }) : _items = items;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  final String id;
  @override
  final String restaurantId;
  final List<CartItem> _items;
  @override
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderPricing? pricingPreview;

  @override
  String toString() {
    return 'Cart(id: $id, restaurantId: $restaurantId, items: $items, pricingPreview: $pricingPreview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pricingPreview, pricingPreview) ||
                other.pricingPreview == pricingPreview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    restaurantId,
    const DeepCollectionEquality().hash(_items),
    pricingPreview,
  );

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(this);
  }
}

abstract class _Cart implements Cart {
  const factory _Cart({
    required final String id,
    required final String restaurantId,
    required final List<CartItem> items,
    final OrderPricing? pricingPreview,
  }) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  String get id;
  @override
  String get restaurantId;
  @override
  List<CartItem> get items;
  @override
  OrderPricing? get pricingPreview;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  Money get unitPrice => throw _privateConstructorUsedError;
  Money get lineTotal => throw _privateConstructorUsedError;
  List<SelectedProductOption> get selectedOptions =>
      throw _privateConstructorUsedError;
  String? get specialInstructions => throw _privateConstructorUsedError;

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call({
    String id,
    String productId,
    String productName,
    int quantity,
    Money unitPrice,
    Money lineTotal,
    List<SelectedProductOption> selectedOptions,
    String? specialInstructions,
  });

  $MoneyCopyWith<$Res> get unitPrice;
  $MoneyCopyWith<$Res> get lineTotal;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? lineTotal = null,
    Object? selectedOptions = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            productName: null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            unitPrice: null == unitPrice
                ? _value.unitPrice
                : unitPrice // ignore: cast_nullable_to_non_nullable
                      as Money,
            lineTotal: null == lineTotal
                ? _value.lineTotal
                : lineTotal // ignore: cast_nullable_to_non_nullable
                      as Money,
            selectedOptions: null == selectedOptions
                ? _value.selectedOptions
                : selectedOptions // ignore: cast_nullable_to_non_nullable
                      as List<SelectedProductOption>,
            specialInstructions: freezed == specialInstructions
                ? _value.specialInstructions
                : specialInstructions // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get lineTotal {
    return $MoneyCopyWith<$Res>(_value.lineTotal, (value) {
      return _then(_value.copyWith(lineTotal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemImplCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$$CartItemImplCopyWith(
    _$CartItemImpl value,
    $Res Function(_$CartItemImpl) then,
  ) = __$$CartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String productId,
    String productName,
    int quantity,
    Money unitPrice,
    Money lineTotal,
    List<SelectedProductOption> selectedOptions,
    String? specialInstructions,
  });

  @override
  $MoneyCopyWith<$Res> get unitPrice;
  @override
  $MoneyCopyWith<$Res> get lineTotal;
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
    _$CartItemImpl _value,
    $Res Function(_$CartItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? lineTotal = null,
    Object? selectedOptions = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(
      _$CartItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        productName: null == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        unitPrice: null == unitPrice
            ? _value.unitPrice
            : unitPrice // ignore: cast_nullable_to_non_nullable
                  as Money,
        lineTotal: null == lineTotal
            ? _value.lineTotal
            : lineTotal // ignore: cast_nullable_to_non_nullable
                  as Money,
        selectedOptions: null == selectedOptions
            ? _value._selectedOptions
            : selectedOptions // ignore: cast_nullable_to_non_nullable
                  as List<SelectedProductOption>,
        specialInstructions: freezed == specialInstructions
            ? _value.specialInstructions
            : specialInstructions // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl({
    required this.id,
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.unitPrice,
    required this.lineTotal,
    final List<SelectedProductOption> selectedOptions = const [],
    this.specialInstructions,
  }) : _selectedOptions = selectedOptions;

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final String id;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final int quantity;
  @override
  final Money unitPrice;
  @override
  final Money lineTotal;
  final List<SelectedProductOption> _selectedOptions;
  @override
  @JsonKey()
  List<SelectedProductOption> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptions);
  }

  @override
  final String? specialInstructions;

  @override
  String toString() {
    return 'CartItem(id: $id, productId: $productId, productName: $productName, quantity: $quantity, unitPrice: $unitPrice, lineTotal: $lineTotal, selectedOptions: $selectedOptions, specialInstructions: $specialInstructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.lineTotal, lineTotal) ||
                other.lineTotal == lineTotal) &&
            const DeepCollectionEquality().equals(
              other._selectedOptions,
              _selectedOptions,
            ) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productId,
    productName,
    quantity,
    unitPrice,
    lineTotal,
    const DeepCollectionEquality().hash(_selectedOptions),
    specialInstructions,
  );

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      __$$CartItemImplCopyWithImpl<_$CartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemImplToJson(this);
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem({
    required final String id,
    required final String productId,
    required final String productName,
    required final int quantity,
    required final Money unitPrice,
    required final Money lineTotal,
    final List<SelectedProductOption> selectedOptions,
    final String? specialInstructions,
  }) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  String get id;
  @override
  String get productId;
  @override
  String get productName;
  @override
  int get quantity;
  @override
  Money get unitPrice;
  @override
  Money get lineTotal;
  @override
  List<SelectedProductOption> get selectedOptions;
  @override
  String? get specialInstructions;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedProductOption _$SelectedProductOptionFromJson(
  Map<String, dynamic> json,
) {
  return _SelectedProductOption.fromJson(json);
}

/// @nodoc
mixin _$SelectedProductOption {
  String get groupId => throw _privateConstructorUsedError;
  String get optionId => throw _privateConstructorUsedError;
  String get optionName => throw _privateConstructorUsedError;
  Money get additionalPrice => throw _privateConstructorUsedError;

  /// Serializes this SelectedProductOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedProductOptionCopyWith<SelectedProductOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedProductOptionCopyWith<$Res> {
  factory $SelectedProductOptionCopyWith(
    SelectedProductOption value,
    $Res Function(SelectedProductOption) then,
  ) = _$SelectedProductOptionCopyWithImpl<$Res, SelectedProductOption>;
  @useResult
  $Res call({
    String groupId,
    String optionId,
    String optionName,
    Money additionalPrice,
  });

  $MoneyCopyWith<$Res> get additionalPrice;
}

/// @nodoc
class _$SelectedProductOptionCopyWithImpl<
  $Res,
  $Val extends SelectedProductOption
>
    implements $SelectedProductOptionCopyWith<$Res> {
  _$SelectedProductOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? optionId = null,
    Object? optionName = null,
    Object? additionalPrice = null,
  }) {
    return _then(
      _value.copyWith(
            groupId: null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String,
            optionId: null == optionId
                ? _value.optionId
                : optionId // ignore: cast_nullable_to_non_nullable
                      as String,
            optionName: null == optionName
                ? _value.optionName
                : optionName // ignore: cast_nullable_to_non_nullable
                      as String,
            additionalPrice: null == additionalPrice
                ? _value.additionalPrice
                : additionalPrice // ignore: cast_nullable_to_non_nullable
                      as Money,
          )
          as $Val,
    );
  }

  /// Create a copy of SelectedProductOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get additionalPrice {
    return $MoneyCopyWith<$Res>(_value.additionalPrice, (value) {
      return _then(_value.copyWith(additionalPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectedProductOptionImplCopyWith<$Res>
    implements $SelectedProductOptionCopyWith<$Res> {
  factory _$$SelectedProductOptionImplCopyWith(
    _$SelectedProductOptionImpl value,
    $Res Function(_$SelectedProductOptionImpl) then,
  ) = __$$SelectedProductOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String groupId,
    String optionId,
    String optionName,
    Money additionalPrice,
  });

  @override
  $MoneyCopyWith<$Res> get additionalPrice;
}

/// @nodoc
class __$$SelectedProductOptionImplCopyWithImpl<$Res>
    extends
        _$SelectedProductOptionCopyWithImpl<$Res, _$SelectedProductOptionImpl>
    implements _$$SelectedProductOptionImplCopyWith<$Res> {
  __$$SelectedProductOptionImplCopyWithImpl(
    _$SelectedProductOptionImpl _value,
    $Res Function(_$SelectedProductOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? optionId = null,
    Object? optionName = null,
    Object? additionalPrice = null,
  }) {
    return _then(
      _$SelectedProductOptionImpl(
        groupId: null == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String,
        optionId: null == optionId
            ? _value.optionId
            : optionId // ignore: cast_nullable_to_non_nullable
                  as String,
        optionName: null == optionName
            ? _value.optionName
            : optionName // ignore: cast_nullable_to_non_nullable
                  as String,
        additionalPrice: null == additionalPrice
            ? _value.additionalPrice
            : additionalPrice // ignore: cast_nullable_to_non_nullable
                  as Money,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedProductOptionImpl implements _SelectedProductOption {
  const _$SelectedProductOptionImpl({
    required this.groupId,
    required this.optionId,
    required this.optionName,
    required this.additionalPrice,
  });

  factory _$SelectedProductOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedProductOptionImplFromJson(json);

  @override
  final String groupId;
  @override
  final String optionId;
  @override
  final String optionName;
  @override
  final Money additionalPrice;

  @override
  String toString() {
    return 'SelectedProductOption(groupId: $groupId, optionId: $optionId, optionName: $optionName, additionalPrice: $additionalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductOptionImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName) &&
            (identical(other.additionalPrice, additionalPrice) ||
                other.additionalPrice == additionalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, optionId, optionName, additionalPrice);

  /// Create a copy of SelectedProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedProductOptionImplCopyWith<_$SelectedProductOptionImpl>
  get copyWith =>
      __$$SelectedProductOptionImplCopyWithImpl<_$SelectedProductOptionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedProductOptionImplToJson(this);
  }
}

abstract class _SelectedProductOption implements SelectedProductOption {
  const factory _SelectedProductOption({
    required final String groupId,
    required final String optionId,
    required final String optionName,
    required final Money additionalPrice,
  }) = _$SelectedProductOptionImpl;

  factory _SelectedProductOption.fromJson(Map<String, dynamic> json) =
      _$SelectedProductOptionImpl.fromJson;

  @override
  String get groupId;
  @override
  String get optionId;
  @override
  String get optionName;
  @override
  Money get additionalPrice;

  /// Create a copy of SelectedProductOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedProductOptionImplCopyWith<_$SelectedProductOptionImpl>
  get copyWith => throw _privateConstructorUsedError;
}
