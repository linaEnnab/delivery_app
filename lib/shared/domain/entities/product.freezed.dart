// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get restaurantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Money get price => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String> get categoryIds => throw _privateConstructorUsedError;

  /// Primary category label from API (for menu tabs when ids are opaque).
  String? get categoryName => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  List<ProductOptionGroup> get optionGroups =>
      throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    String id,
    String restaurantId,
    String name,
    String description,
    Money price,
    String? imageUrl,
    List<String> categoryIds,
    String? categoryName,
    bool isAvailable,
    List<ProductOptionGroup> optionGroups,
  });

  $MoneyCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = freezed,
    Object? categoryIds = null,
    Object? categoryName = freezed,
    Object? isAvailable = null,
    Object? optionGroups = null,
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as Money,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryIds: null == categoryIds
                ? _value.categoryIds
                : categoryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            optionGroups: null == optionGroups
                ? _value.optionGroups
                : optionGroups // ignore: cast_nullable_to_non_nullable
                      as List<ProductOptionGroup>,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get price {
    return $MoneyCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String restaurantId,
    String name,
    String description,
    Money price,
    String? imageUrl,
    List<String> categoryIds,
    String? categoryName,
    bool isAvailable,
    List<ProductOptionGroup> optionGroups,
  });

  @override
  $MoneyCopyWith<$Res> get price;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = freezed,
    Object? categoryIds = null,
    Object? categoryName = freezed,
    Object? isAvailable = null,
    Object? optionGroups = null,
  }) {
    return _then(
      _$ProductImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        restaurantId: null == restaurantId
            ? _value.restaurantId
            : restaurantId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as Money,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryIds: null == categoryIds
            ? _value._categoryIds
            : categoryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        optionGroups: null == optionGroups
            ? _value._optionGroups
            : optionGroups // ignore: cast_nullable_to_non_nullable
                  as List<ProductOptionGroup>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.restaurantId,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
    final List<String> categoryIds = const [],
    this.categoryName,
    this.isAvailable = true,
    final List<ProductOptionGroup> optionGroups = const [],
  }) : _categoryIds = categoryIds,
       _optionGroups = optionGroups;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String restaurantId;
  @override
  final String name;
  @override
  final String description;
  @override
  final Money price;
  @override
  final String? imageUrl;
  final List<String> _categoryIds;
  @override
  @JsonKey()
  List<String> get categoryIds {
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIds);
  }

  /// Primary category label from API (for menu tabs when ids are opaque).
  @override
  final String? categoryName;
  @override
  @JsonKey()
  final bool isAvailable;
  final List<ProductOptionGroup> _optionGroups;
  @override
  @JsonKey()
  List<ProductOptionGroup> get optionGroups {
    if (_optionGroups is EqualUnmodifiableListView) return _optionGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionGroups);
  }

  @override
  String toString() {
    return 'Product(id: $id, restaurantId: $restaurantId, name: $name, description: $description, price: $price, imageUrl: $imageUrl, categoryIds: $categoryIds, categoryName: $categoryName, isAvailable: $isAvailable, optionGroups: $optionGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(
              other._categoryIds,
              _categoryIds,
            ) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            const DeepCollectionEquality().equals(
              other._optionGroups,
              _optionGroups,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    restaurantId,
    name,
    description,
    price,
    imageUrl,
    const DeepCollectionEquality().hash(_categoryIds),
    categoryName,
    isAvailable,
    const DeepCollectionEquality().hash(_optionGroups),
  );

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product({
    required final String id,
    required final String restaurantId,
    required final String name,
    required final String description,
    required final Money price,
    final String? imageUrl,
    final List<String> categoryIds,
    final String? categoryName,
    final bool isAvailable,
    final List<ProductOptionGroup> optionGroups,
  }) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get restaurantId;
  @override
  String get name;
  @override
  String get description;
  @override
  Money get price;
  @override
  String? get imageUrl;
  @override
  List<String> get categoryIds;

  /// Primary category label from API (for menu tabs when ids are opaque).
  @override
  String? get categoryName;
  @override
  bool get isAvailable;
  @override
  List<ProductOptionGroup> get optionGroups;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductOptionGroup _$ProductOptionGroupFromJson(Map<String, dynamic> json) {
  return _ProductOptionGroup.fromJson(json);
}

/// @nodoc
mixin _$ProductOptionGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get minSelection => throw _privateConstructorUsedError;
  int get maxSelection => throw _privateConstructorUsedError;
  List<ProductOption> get options => throw _privateConstructorUsedError;

  /// Serializes this ProductOptionGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductOptionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOptionGroupCopyWith<ProductOptionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionGroupCopyWith<$Res> {
  factory $ProductOptionGroupCopyWith(
    ProductOptionGroup value,
    $Res Function(ProductOptionGroup) then,
  ) = _$ProductOptionGroupCopyWithImpl<$Res, ProductOptionGroup>;
  @useResult
  $Res call({
    String id,
    String name,
    int minSelection,
    int maxSelection,
    List<ProductOption> options,
  });
}

/// @nodoc
class _$ProductOptionGroupCopyWithImpl<$Res, $Val extends ProductOptionGroup>
    implements $ProductOptionGroupCopyWith<$Res> {
  _$ProductOptionGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOptionGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minSelection = null,
    Object? maxSelection = null,
    Object? options = null,
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
            minSelection: null == minSelection
                ? _value.minSelection
                : minSelection // ignore: cast_nullable_to_non_nullable
                      as int,
            maxSelection: null == maxSelection
                ? _value.maxSelection
                : maxSelection // ignore: cast_nullable_to_non_nullable
                      as int,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<ProductOption>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductOptionGroupImplCopyWith<$Res>
    implements $ProductOptionGroupCopyWith<$Res> {
  factory _$$ProductOptionGroupImplCopyWith(
    _$ProductOptionGroupImpl value,
    $Res Function(_$ProductOptionGroupImpl) then,
  ) = __$$ProductOptionGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    int minSelection,
    int maxSelection,
    List<ProductOption> options,
  });
}

/// @nodoc
class __$$ProductOptionGroupImplCopyWithImpl<$Res>
    extends _$ProductOptionGroupCopyWithImpl<$Res, _$ProductOptionGroupImpl>
    implements _$$ProductOptionGroupImplCopyWith<$Res> {
  __$$ProductOptionGroupImplCopyWithImpl(
    _$ProductOptionGroupImpl _value,
    $Res Function(_$ProductOptionGroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductOptionGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minSelection = null,
    Object? maxSelection = null,
    Object? options = null,
  }) {
    return _then(
      _$ProductOptionGroupImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        minSelection: null == minSelection
            ? _value.minSelection
            : minSelection // ignore: cast_nullable_to_non_nullable
                  as int,
        maxSelection: null == maxSelection
            ? _value.maxSelection
            : maxSelection // ignore: cast_nullable_to_non_nullable
                  as int,
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<ProductOption>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOptionGroupImpl implements _ProductOptionGroup {
  const _$ProductOptionGroupImpl({
    required this.id,
    required this.name,
    required this.minSelection,
    required this.maxSelection,
    final List<ProductOption> options = const [],
  }) : _options = options;

  factory _$ProductOptionGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOptionGroupImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int minSelection;
  @override
  final int maxSelection;
  final List<ProductOption> _options;
  @override
  @JsonKey()
  List<ProductOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductOptionGroup(id: $id, name: $name, minSelection: $minSelection, maxSelection: $maxSelection, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOptionGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minSelection, minSelection) ||
                other.minSelection == minSelection) &&
            (identical(other.maxSelection, maxSelection) ||
                other.maxSelection == maxSelection) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    minSelection,
    maxSelection,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of ProductOptionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOptionGroupImplCopyWith<_$ProductOptionGroupImpl> get copyWith =>
      __$$ProductOptionGroupImplCopyWithImpl<_$ProductOptionGroupImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOptionGroupImplToJson(this);
  }
}

abstract class _ProductOptionGroup implements ProductOptionGroup {
  const factory _ProductOptionGroup({
    required final String id,
    required final String name,
    required final int minSelection,
    required final int maxSelection,
    final List<ProductOption> options,
  }) = _$ProductOptionGroupImpl;

  factory _ProductOptionGroup.fromJson(Map<String, dynamic> json) =
      _$ProductOptionGroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get minSelection;
  @override
  int get maxSelection;
  @override
  List<ProductOption> get options;

  /// Create a copy of ProductOptionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOptionGroupImplCopyWith<_$ProductOptionGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductOption _$ProductOptionFromJson(Map<String, dynamic> json) {
  return _ProductOption.fromJson(json);
}

/// @nodoc
mixin _$ProductOption {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Money get additionalPrice => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this ProductOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOptionCopyWith<ProductOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionCopyWith<$Res> {
  factory $ProductOptionCopyWith(
    ProductOption value,
    $Res Function(ProductOption) then,
  ) = _$ProductOptionCopyWithImpl<$Res, ProductOption>;
  @useResult
  $Res call({String id, String name, Money additionalPrice, bool isAvailable});

  $MoneyCopyWith<$Res> get additionalPrice;
}

/// @nodoc
class _$ProductOptionCopyWithImpl<$Res, $Val extends ProductOption>
    implements $ProductOptionCopyWith<$Res> {
  _$ProductOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalPrice = null,
    Object? isAvailable = null,
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
            additionalPrice: null == additionalPrice
                ? _value.additionalPrice
                : additionalPrice // ignore: cast_nullable_to_non_nullable
                      as Money,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductOption
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
abstract class _$$ProductOptionImplCopyWith<$Res>
    implements $ProductOptionCopyWith<$Res> {
  factory _$$ProductOptionImplCopyWith(
    _$ProductOptionImpl value,
    $Res Function(_$ProductOptionImpl) then,
  ) = __$$ProductOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Money additionalPrice, bool isAvailable});

  @override
  $MoneyCopyWith<$Res> get additionalPrice;
}

/// @nodoc
class __$$ProductOptionImplCopyWithImpl<$Res>
    extends _$ProductOptionCopyWithImpl<$Res, _$ProductOptionImpl>
    implements _$$ProductOptionImplCopyWith<$Res> {
  __$$ProductOptionImplCopyWithImpl(
    _$ProductOptionImpl _value,
    $Res Function(_$ProductOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalPrice = null,
    Object? isAvailable = null,
  }) {
    return _then(
      _$ProductOptionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        additionalPrice: null == additionalPrice
            ? _value.additionalPrice
            : additionalPrice // ignore: cast_nullable_to_non_nullable
                  as Money,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOptionImpl implements _ProductOption {
  const _$ProductOptionImpl({
    required this.id,
    required this.name,
    this.additionalPrice = Money.zero,
    this.isAvailable = true,
  });

  factory _$ProductOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final Money additionalPrice;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'ProductOption(id: $id, name: $name, additionalPrice: $additionalPrice, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalPrice, additionalPrice) ||
                other.additionalPrice == additionalPrice) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, additionalPrice, isAvailable);

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOptionImplCopyWith<_$ProductOptionImpl> get copyWith =>
      __$$ProductOptionImplCopyWithImpl<_$ProductOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOptionImplToJson(this);
  }
}

abstract class _ProductOption implements ProductOption {
  const factory _ProductOption({
    required final String id,
    required final String name,
    final Money additionalPrice,
    final bool isAvailable,
  }) = _$ProductOptionImpl;

  factory _ProductOption.fromJson(Map<String, dynamic> json) =
      _$ProductOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Money get additionalPrice;
  @override
  bool get isAvailable;

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOptionImplCopyWith<_$ProductOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
