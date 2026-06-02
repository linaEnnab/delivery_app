// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RestaurantSummary _$RestaurantSummaryFromJson(Map<String, dynamic> json) {
  return _RestaurantSummary.fromJson(json);
}

/// @nodoc
mixin _$RestaurantSummary {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Square / circular logo for detail header; optional on list cards.
  String? get logoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// ISO-like currency code for formatting delivery fee / minimums.
  @JsonKey(name: 'currency_code')
  String get currencyCode => throw _privateConstructorUsedError;

  /// Short line for hours / open state (from API or empty).
  @JsonKey(name: 'opening_status_line')
  String get openingStatusLine => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get cuisineTags => throw _privateConstructorUsedError;
  int get estimatedDeliveryMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_delivery_minutes_max')
  int? get estimatedDeliveryMinutesMax => throw _privateConstructorUsedError;
  double get minimumOrderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_fee_amount')
  double get deliveryFeeAmount => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  bool get hasFreeDelivery => throw _privateConstructorUsedError;
  bool get isSponsored => throw _privateConstructorUsedError;

  /// Serializes this RestaurantSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestaurantSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantSummaryCopyWith<RestaurantSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantSummaryCopyWith<$Res> {
  factory $RestaurantSummaryCopyWith(
    RestaurantSummary value,
    $Res Function(RestaurantSummary) then,
  ) = _$RestaurantSummaryCopyWithImpl<$Res, RestaurantSummary>;
  @useResult
  $Res call({
    String id,
    String name,
    String imageUrl,
    String? logoUrl,
    String description,
    @JsonKey(name: 'currency_code') String currencyCode,
    @JsonKey(name: 'opening_status_line') String openingStatusLine,
    double rating,
    int reviewCount,
    String cuisineTags,
    int estimatedDeliveryMinutes,
    @JsonKey(name: 'estimated_delivery_minutes_max')
    int? estimatedDeliveryMinutesMax,
    double minimumOrderAmount,
    @JsonKey(name: 'delivery_fee_amount') double deliveryFeeAmount,
    bool isOpen,
    bool hasFreeDelivery,
    bool isSponsored,
  });
}

/// @nodoc
class _$RestaurantSummaryCopyWithImpl<$Res, $Val extends RestaurantSummary>
    implements $RestaurantSummaryCopyWith<$Res> {
  _$RestaurantSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurantSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? logoUrl = freezed,
    Object? description = null,
    Object? currencyCode = null,
    Object? openingStatusLine = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? cuisineTags = null,
    Object? estimatedDeliveryMinutes = null,
    Object? estimatedDeliveryMinutesMax = freezed,
    Object? minimumOrderAmount = null,
    Object? deliveryFeeAmount = null,
    Object? isOpen = null,
    Object? hasFreeDelivery = null,
    Object? isSponsored = null,
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
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            logoUrl: freezed == logoUrl
                ? _value.logoUrl
                : logoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            currencyCode: null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                      as String,
            openingStatusLine: null == openingStatusLine
                ? _value.openingStatusLine
                : openingStatusLine // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewCount: null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            cuisineTags: null == cuisineTags
                ? _value.cuisineTags
                : cuisineTags // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedDeliveryMinutes: null == estimatedDeliveryMinutes
                ? _value.estimatedDeliveryMinutes
                : estimatedDeliveryMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            estimatedDeliveryMinutesMax: freezed == estimatedDeliveryMinutesMax
                ? _value.estimatedDeliveryMinutesMax
                : estimatedDeliveryMinutesMax // ignore: cast_nullable_to_non_nullable
                      as int?,
            minimumOrderAmount: null == minimumOrderAmount
                ? _value.minimumOrderAmount
                : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            deliveryFeeAmount: null == deliveryFeeAmount
                ? _value.deliveryFeeAmount
                : deliveryFeeAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            isOpen: null == isOpen
                ? _value.isOpen
                : isOpen // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasFreeDelivery: null == hasFreeDelivery
                ? _value.hasFreeDelivery
                : hasFreeDelivery // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSponsored: null == isSponsored
                ? _value.isSponsored
                : isSponsored // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RestaurantSummaryImplCopyWith<$Res>
    implements $RestaurantSummaryCopyWith<$Res> {
  factory _$$RestaurantSummaryImplCopyWith(
    _$RestaurantSummaryImpl value,
    $Res Function(_$RestaurantSummaryImpl) then,
  ) = __$$RestaurantSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String imageUrl,
    String? logoUrl,
    String description,
    @JsonKey(name: 'currency_code') String currencyCode,
    @JsonKey(name: 'opening_status_line') String openingStatusLine,
    double rating,
    int reviewCount,
    String cuisineTags,
    int estimatedDeliveryMinutes,
    @JsonKey(name: 'estimated_delivery_minutes_max')
    int? estimatedDeliveryMinutesMax,
    double minimumOrderAmount,
    @JsonKey(name: 'delivery_fee_amount') double deliveryFeeAmount,
    bool isOpen,
    bool hasFreeDelivery,
    bool isSponsored,
  });
}

/// @nodoc
class __$$RestaurantSummaryImplCopyWithImpl<$Res>
    extends _$RestaurantSummaryCopyWithImpl<$Res, _$RestaurantSummaryImpl>
    implements _$$RestaurantSummaryImplCopyWith<$Res> {
  __$$RestaurantSummaryImplCopyWithImpl(
    _$RestaurantSummaryImpl _value,
    $Res Function(_$RestaurantSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RestaurantSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? logoUrl = freezed,
    Object? description = null,
    Object? currencyCode = null,
    Object? openingStatusLine = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? cuisineTags = null,
    Object? estimatedDeliveryMinutes = null,
    Object? estimatedDeliveryMinutesMax = freezed,
    Object? minimumOrderAmount = null,
    Object? deliveryFeeAmount = null,
    Object? isOpen = null,
    Object? hasFreeDelivery = null,
    Object? isSponsored = null,
  }) {
    return _then(
      _$RestaurantSummaryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        logoUrl: freezed == logoUrl
            ? _value.logoUrl
            : logoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        currencyCode: null == currencyCode
            ? _value.currencyCode
            : currencyCode // ignore: cast_nullable_to_non_nullable
                  as String,
        openingStatusLine: null == openingStatusLine
            ? _value.openingStatusLine
            : openingStatusLine // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewCount: null == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        cuisineTags: null == cuisineTags
            ? _value.cuisineTags
            : cuisineTags // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedDeliveryMinutes: null == estimatedDeliveryMinutes
            ? _value.estimatedDeliveryMinutes
            : estimatedDeliveryMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        estimatedDeliveryMinutesMax: freezed == estimatedDeliveryMinutesMax
            ? _value.estimatedDeliveryMinutesMax
            : estimatedDeliveryMinutesMax // ignore: cast_nullable_to_non_nullable
                  as int?,
        minimumOrderAmount: null == minimumOrderAmount
            ? _value.minimumOrderAmount
            : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        deliveryFeeAmount: null == deliveryFeeAmount
            ? _value.deliveryFeeAmount
            : deliveryFeeAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        isOpen: null == isOpen
            ? _value.isOpen
            : isOpen // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasFreeDelivery: null == hasFreeDelivery
            ? _value.hasFreeDelivery
            : hasFreeDelivery // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSponsored: null == isSponsored
            ? _value.isSponsored
            : isSponsored // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantSummaryImpl implements _RestaurantSummary {
  const _$RestaurantSummaryImpl({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.logoUrl,
    this.description = '',
    @JsonKey(name: 'currency_code') this.currencyCode = 'JOD',
    @JsonKey(name: 'opening_status_line') this.openingStatusLine = '',
    required this.rating,
    required this.reviewCount,
    required this.cuisineTags,
    required this.estimatedDeliveryMinutes,
    @JsonKey(name: 'estimated_delivery_minutes_max')
    this.estimatedDeliveryMinutesMax,
    required this.minimumOrderAmount,
    @JsonKey(name: 'delivery_fee_amount') this.deliveryFeeAmount = 0,
    this.isOpen = false,
    this.hasFreeDelivery = false,
    this.isSponsored = false,
  });

  factory _$RestaurantSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantSummaryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  /// Square / circular logo for detail header; optional on list cards.
  @override
  final String? logoUrl;
  @override
  @JsonKey()
  final String description;

  /// ISO-like currency code for formatting delivery fee / minimums.
  @override
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  /// Short line for hours / open state (from API or empty).
  @override
  @JsonKey(name: 'opening_status_line')
  final String openingStatusLine;
  @override
  final double rating;
  @override
  final int reviewCount;
  @override
  final String cuisineTags;
  @override
  final int estimatedDeliveryMinutes;
  @override
  @JsonKey(name: 'estimated_delivery_minutes_max')
  final int? estimatedDeliveryMinutesMax;
  @override
  final double minimumOrderAmount;
  @override
  @JsonKey(name: 'delivery_fee_amount')
  final double deliveryFeeAmount;
  @override
  @JsonKey()
  final bool isOpen;
  @override
  @JsonKey()
  final bool hasFreeDelivery;
  @override
  @JsonKey()
  final bool isSponsored;

  @override
  String toString() {
    return 'RestaurantSummary(id: $id, name: $name, imageUrl: $imageUrl, logoUrl: $logoUrl, description: $description, currencyCode: $currencyCode, openingStatusLine: $openingStatusLine, rating: $rating, reviewCount: $reviewCount, cuisineTags: $cuisineTags, estimatedDeliveryMinutes: $estimatedDeliveryMinutes, estimatedDeliveryMinutesMax: $estimatedDeliveryMinutesMax, minimumOrderAmount: $minimumOrderAmount, deliveryFeeAmount: $deliveryFeeAmount, isOpen: $isOpen, hasFreeDelivery: $hasFreeDelivery, isSponsored: $isSponsored)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.openingStatusLine, openingStatusLine) ||
                other.openingStatusLine == openingStatusLine) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.cuisineTags, cuisineTags) ||
                other.cuisineTags == cuisineTags) &&
            (identical(
                  other.estimatedDeliveryMinutes,
                  estimatedDeliveryMinutes,
                ) ||
                other.estimatedDeliveryMinutes == estimatedDeliveryMinutes) &&
            (identical(
                  other.estimatedDeliveryMinutesMax,
                  estimatedDeliveryMinutesMax,
                ) ||
                other.estimatedDeliveryMinutesMax ==
                    estimatedDeliveryMinutesMax) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.deliveryFeeAmount, deliveryFeeAmount) ||
                other.deliveryFeeAmount == deliveryFeeAmount) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.hasFreeDelivery, hasFreeDelivery) ||
                other.hasFreeDelivery == hasFreeDelivery) &&
            (identical(other.isSponsored, isSponsored) ||
                other.isSponsored == isSponsored));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    imageUrl,
    logoUrl,
    description,
    currencyCode,
    openingStatusLine,
    rating,
    reviewCount,
    cuisineTags,
    estimatedDeliveryMinutes,
    estimatedDeliveryMinutesMax,
    minimumOrderAmount,
    deliveryFeeAmount,
    isOpen,
    hasFreeDelivery,
    isSponsored,
  );

  /// Create a copy of RestaurantSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantSummaryImplCopyWith<_$RestaurantSummaryImpl> get copyWith =>
      __$$RestaurantSummaryImplCopyWithImpl<_$RestaurantSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantSummaryImplToJson(this);
  }
}

abstract class _RestaurantSummary implements RestaurantSummary {
  const factory _RestaurantSummary({
    required final String id,
    required final String name,
    required final String imageUrl,
    final String? logoUrl,
    final String description,
    @JsonKey(name: 'currency_code') final String currencyCode,
    @JsonKey(name: 'opening_status_line') final String openingStatusLine,
    required final double rating,
    required final int reviewCount,
    required final String cuisineTags,
    required final int estimatedDeliveryMinutes,
    @JsonKey(name: 'estimated_delivery_minutes_max')
    final int? estimatedDeliveryMinutesMax,
    required final double minimumOrderAmount,
    @JsonKey(name: 'delivery_fee_amount') final double deliveryFeeAmount,
    final bool isOpen,
    final bool hasFreeDelivery,
    final bool isSponsored,
  }) = _$RestaurantSummaryImpl;

  factory _RestaurantSummary.fromJson(Map<String, dynamic> json) =
      _$RestaurantSummaryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;

  /// Square / circular logo for detail header; optional on list cards.
  @override
  String? get logoUrl;
  @override
  String get description;

  /// ISO-like currency code for formatting delivery fee / minimums.
  @override
  @JsonKey(name: 'currency_code')
  String get currencyCode;

  /// Short line for hours / open state (from API or empty).
  @override
  @JsonKey(name: 'opening_status_line')
  String get openingStatusLine;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  String get cuisineTags;
  @override
  int get estimatedDeliveryMinutes;
  @override
  @JsonKey(name: 'estimated_delivery_minutes_max')
  int? get estimatedDeliveryMinutesMax;
  @override
  double get minimumOrderAmount;
  @override
  @JsonKey(name: 'delivery_fee_amount')
  double get deliveryFeeAmount;
  @override
  bool get isOpen;
  @override
  bool get hasFreeDelivery;
  @override
  bool get isSponsored;

  /// Create a copy of RestaurantSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantSummaryImplCopyWith<_$RestaurantSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
