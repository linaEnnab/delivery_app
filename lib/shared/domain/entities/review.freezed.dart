// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewImage _$ReviewImageFromJson(Map<String, dynamic> json) {
  return _ReviewImage.fromJson(json);
}

/// @nodoc
mixin _$ReviewImage {
  String? get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;

  /// Serializes this ReviewImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewImageCopyWith<ReviewImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewImageCopyWith<$Res> {
  factory $ReviewImageCopyWith(
    ReviewImage value,
    $Res Function(ReviewImage) then,
  ) = _$ReviewImageCopyWithImpl<$Res, ReviewImage>;
  @useResult
  $Res call({String? id, String url, int sortOrder});
}

/// @nodoc
class _$ReviewImageCopyWithImpl<$Res, $Val extends ReviewImage>
    implements $ReviewImageCopyWith<$Res> {
  _$ReviewImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = null,
    Object? sortOrder = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            sortOrder: null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewImageImplCopyWith<$Res>
    implements $ReviewImageCopyWith<$Res> {
  factory _$$ReviewImageImplCopyWith(
    _$ReviewImageImpl value,
    $Res Function(_$ReviewImageImpl) then,
  ) = __$$ReviewImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String url, int sortOrder});
}

/// @nodoc
class __$$ReviewImageImplCopyWithImpl<$Res>
    extends _$ReviewImageCopyWithImpl<$Res, _$ReviewImageImpl>
    implements _$$ReviewImageImplCopyWith<$Res> {
  __$$ReviewImageImplCopyWithImpl(
    _$ReviewImageImpl _value,
    $Res Function(_$ReviewImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = null,
    Object? sortOrder = null,
  }) {
    return _then(
      _$ReviewImageImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        sortOrder: null == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImageImpl implements _ReviewImage {
  const _$ReviewImageImpl({this.id, required this.url, this.sortOrder = 0});

  factory _$ReviewImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImageImplFromJson(json);

  @override
  final String? id;
  @override
  final String url;
  @override
  @JsonKey()
  final int sortOrder;

  @override
  String toString() {
    return 'ReviewImage(id: $id, url: $url, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, sortOrder);

  /// Create a copy of ReviewImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImageImplCopyWith<_$ReviewImageImpl> get copyWith =>
      __$$ReviewImageImplCopyWithImpl<_$ReviewImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImageImplToJson(this);
  }
}

abstract class _ReviewImage implements ReviewImage {
  const factory _ReviewImage({
    final String? id,
    required final String url,
    final int sortOrder,
  }) = _$ReviewImageImpl;

  factory _ReviewImage.fromJson(Map<String, dynamic> json) =
      _$ReviewImageImpl.fromJson;

  @override
  String? get id;
  @override
  String get url;
  @override
  int get sortOrder;

  /// Create a copy of ReviewImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImageImplCopyWith<_$ReviewImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  ReviewTargetType get targetType => throw _privateConstructorUsedError;
  String get targetId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_images')
  List<ReviewImage> get images => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({
    String id,
    String orderId,
    ReviewTargetType targetType,
    String targetId,
    int rating,
    String? comment,
    @JsonKey(name: 'review_images') List<ReviewImage> images,
    DateTime createdAt,
  });
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? targetType = null,
    Object? targetId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? images = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetType: null == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as ReviewTargetType,
            targetId: null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ReviewImage>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
    _$ReviewImpl value,
    $Res Function(_$ReviewImpl) then,
  ) = __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String orderId,
    ReviewTargetType targetType,
    String targetId,
    int rating,
    String? comment,
    @JsonKey(name: 'review_images') List<ReviewImage> images,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
    _$ReviewImpl _value,
    $Res Function(_$ReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? targetType = null,
    Object? targetId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? images = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ReviewImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as ReviewTargetType,
        targetId: null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ReviewImage>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl({
    required this.id,
    required this.orderId,
    required this.targetType,
    required this.targetId,
    required this.rating,
    this.comment,
    @JsonKey(name: 'review_images') final List<ReviewImage> images = const [],
    required this.createdAt,
  }) : _images = images;

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String id;
  @override
  final String orderId;
  @override
  final ReviewTargetType targetType;
  @override
  final String targetId;
  @override
  final int rating;
  @override
  final String? comment;
  final List<ReviewImage> _images;
  @override
  @JsonKey(name: 'review_images')
  List<ReviewImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Review(id: $id, orderId: $orderId, targetType: $targetType, targetId: $targetId, rating: $rating, comment: $comment, images: $images, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderId,
    targetType,
    targetId,
    rating,
    comment,
    const DeepCollectionEquality().hash(_images),
    createdAt,
  );

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(this);
  }
}

abstract class _Review implements Review {
  const factory _Review({
    required final String id,
    required final String orderId,
    required final ReviewTargetType targetType,
    required final String targetId,
    required final int rating,
    final String? comment,
    @JsonKey(name: 'review_images') final List<ReviewImage> images,
    required final DateTime createdAt,
  }) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String get id;
  @override
  String get orderId;
  @override
  ReviewTargetType get targetType;
  @override
  String get targetId;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'review_images')
  List<ReviewImage> get images;
  @override
  DateTime get createdAt;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderReviewSubmission _$OrderReviewSubmissionFromJson(
  Map<String, dynamic> json,
) {
  return _OrderReviewSubmission.fromJson(json);
}

/// @nodoc
mixin _$OrderReviewSubmission {
  String get orderId => throw _privateConstructorUsedError;
  int? get restaurantRating => throw _privateConstructorUsedError;
  int? get driverRating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_images')
  List<ReviewImage> get images => throw _privateConstructorUsedError;

  /// Serializes this OrderReviewSubmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderReviewSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderReviewSubmissionCopyWith<OrderReviewSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReviewSubmissionCopyWith<$Res> {
  factory $OrderReviewSubmissionCopyWith(
    OrderReviewSubmission value,
    $Res Function(OrderReviewSubmission) then,
  ) = _$OrderReviewSubmissionCopyWithImpl<$Res, OrderReviewSubmission>;
  @useResult
  $Res call({
    String orderId,
    int? restaurantRating,
    int? driverRating,
    String? comment,
    @JsonKey(name: 'review_images') List<ReviewImage> images,
  });
}

/// @nodoc
class _$OrderReviewSubmissionCopyWithImpl<
  $Res,
  $Val extends OrderReviewSubmission
>
    implements $OrderReviewSubmissionCopyWith<$Res> {
  _$OrderReviewSubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderReviewSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? restaurantRating = freezed,
    Object? driverRating = freezed,
    Object? comment = freezed,
    Object? images = null,
  }) {
    return _then(
      _value.copyWith(
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            restaurantRating: freezed == restaurantRating
                ? _value.restaurantRating
                : restaurantRating // ignore: cast_nullable_to_non_nullable
                      as int?,
            driverRating: freezed == driverRating
                ? _value.driverRating
                : driverRating // ignore: cast_nullable_to_non_nullable
                      as int?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ReviewImage>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderReviewSubmissionImplCopyWith<$Res>
    implements $OrderReviewSubmissionCopyWith<$Res> {
  factory _$$OrderReviewSubmissionImplCopyWith(
    _$OrderReviewSubmissionImpl value,
    $Res Function(_$OrderReviewSubmissionImpl) then,
  ) = __$$OrderReviewSubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String orderId,
    int? restaurantRating,
    int? driverRating,
    String? comment,
    @JsonKey(name: 'review_images') List<ReviewImage> images,
  });
}

/// @nodoc
class __$$OrderReviewSubmissionImplCopyWithImpl<$Res>
    extends
        _$OrderReviewSubmissionCopyWithImpl<$Res, _$OrderReviewSubmissionImpl>
    implements _$$OrderReviewSubmissionImplCopyWith<$Res> {
  __$$OrderReviewSubmissionImplCopyWithImpl(
    _$OrderReviewSubmissionImpl _value,
    $Res Function(_$OrderReviewSubmissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderReviewSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? restaurantRating = freezed,
    Object? driverRating = freezed,
    Object? comment = freezed,
    Object? images = null,
  }) {
    return _then(
      _$OrderReviewSubmissionImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        restaurantRating: freezed == restaurantRating
            ? _value.restaurantRating
            : restaurantRating // ignore: cast_nullable_to_non_nullable
                  as int?,
        driverRating: freezed == driverRating
            ? _value.driverRating
            : driverRating // ignore: cast_nullable_to_non_nullable
                  as int?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ReviewImage>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderReviewSubmissionImpl implements _OrderReviewSubmission {
  const _$OrderReviewSubmissionImpl({
    required this.orderId,
    this.restaurantRating,
    this.driverRating,
    this.comment,
    @JsonKey(name: 'review_images') final List<ReviewImage> images = const [],
  }) : _images = images;

  factory _$OrderReviewSubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderReviewSubmissionImplFromJson(json);

  @override
  final String orderId;
  @override
  final int? restaurantRating;
  @override
  final int? driverRating;
  @override
  final String? comment;
  final List<ReviewImage> _images;
  @override
  @JsonKey(name: 'review_images')
  List<ReviewImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'OrderReviewSubmission(orderId: $orderId, restaurantRating: $restaurantRating, driverRating: $driverRating, comment: $comment, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderReviewSubmissionImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.restaurantRating, restaurantRating) ||
                other.restaurantRating == restaurantRating) &&
            (identical(other.driverRating, driverRating) ||
                other.driverRating == driverRating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderId,
    restaurantRating,
    driverRating,
    comment,
    const DeepCollectionEquality().hash(_images),
  );

  /// Create a copy of OrderReviewSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReviewSubmissionImplCopyWith<_$OrderReviewSubmissionImpl>
  get copyWith =>
      __$$OrderReviewSubmissionImplCopyWithImpl<_$OrderReviewSubmissionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderReviewSubmissionImplToJson(this);
  }
}

abstract class _OrderReviewSubmission implements OrderReviewSubmission {
  const factory _OrderReviewSubmission({
    required final String orderId,
    final int? restaurantRating,
    final int? driverRating,
    final String? comment,
    @JsonKey(name: 'review_images') final List<ReviewImage> images,
  }) = _$OrderReviewSubmissionImpl;

  factory _OrderReviewSubmission.fromJson(Map<String, dynamic> json) =
      _$OrderReviewSubmissionImpl.fromJson;

  @override
  String get orderId;
  @override
  int? get restaurantRating;
  @override
  int? get driverRating;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'review_images')
  List<ReviewImage> get images;

  /// Create a copy of OrderReviewSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderReviewSubmissionImplCopyWith<_$OrderReviewSubmissionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ReviewEligibility _$ReviewEligibilityFromJson(Map<String, dynamic> json) {
  return _ReviewEligibility.fromJson(json);
}

/// @nodoc
mixin _$ReviewEligibility {
  String get orderId => throw _privateConstructorUsedError;
  bool get canReviewRestaurant => throw _privateConstructorUsedError;
  bool get canReviewDriver => throw _privateConstructorUsedError;
  bool get restaurantReviewSubmitted => throw _privateConstructorUsedError;
  bool get driverReviewSubmitted => throw _privateConstructorUsedError;

  /// Serializes this ReviewEligibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewEligibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewEligibilityCopyWith<ReviewEligibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEligibilityCopyWith<$Res> {
  factory $ReviewEligibilityCopyWith(
    ReviewEligibility value,
    $Res Function(ReviewEligibility) then,
  ) = _$ReviewEligibilityCopyWithImpl<$Res, ReviewEligibility>;
  @useResult
  $Res call({
    String orderId,
    bool canReviewRestaurant,
    bool canReviewDriver,
    bool restaurantReviewSubmitted,
    bool driverReviewSubmitted,
  });
}

/// @nodoc
class _$ReviewEligibilityCopyWithImpl<$Res, $Val extends ReviewEligibility>
    implements $ReviewEligibilityCopyWith<$Res> {
  _$ReviewEligibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewEligibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? canReviewRestaurant = null,
    Object? canReviewDriver = null,
    Object? restaurantReviewSubmitted = null,
    Object? driverReviewSubmitted = null,
  }) {
    return _then(
      _value.copyWith(
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            canReviewRestaurant: null == canReviewRestaurant
                ? _value.canReviewRestaurant
                : canReviewRestaurant // ignore: cast_nullable_to_non_nullable
                      as bool,
            canReviewDriver: null == canReviewDriver
                ? _value.canReviewDriver
                : canReviewDriver // ignore: cast_nullable_to_non_nullable
                      as bool,
            restaurantReviewSubmitted: null == restaurantReviewSubmitted
                ? _value.restaurantReviewSubmitted
                : restaurantReviewSubmitted // ignore: cast_nullable_to_non_nullable
                      as bool,
            driverReviewSubmitted: null == driverReviewSubmitted
                ? _value.driverReviewSubmitted
                : driverReviewSubmitted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewEligibilityImplCopyWith<$Res>
    implements $ReviewEligibilityCopyWith<$Res> {
  factory _$$ReviewEligibilityImplCopyWith(
    _$ReviewEligibilityImpl value,
    $Res Function(_$ReviewEligibilityImpl) then,
  ) = __$$ReviewEligibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String orderId,
    bool canReviewRestaurant,
    bool canReviewDriver,
    bool restaurantReviewSubmitted,
    bool driverReviewSubmitted,
  });
}

/// @nodoc
class __$$ReviewEligibilityImplCopyWithImpl<$Res>
    extends _$ReviewEligibilityCopyWithImpl<$Res, _$ReviewEligibilityImpl>
    implements _$$ReviewEligibilityImplCopyWith<$Res> {
  __$$ReviewEligibilityImplCopyWithImpl(
    _$ReviewEligibilityImpl _value,
    $Res Function(_$ReviewEligibilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewEligibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? canReviewRestaurant = null,
    Object? canReviewDriver = null,
    Object? restaurantReviewSubmitted = null,
    Object? driverReviewSubmitted = null,
  }) {
    return _then(
      _$ReviewEligibilityImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        canReviewRestaurant: null == canReviewRestaurant
            ? _value.canReviewRestaurant
            : canReviewRestaurant // ignore: cast_nullable_to_non_nullable
                  as bool,
        canReviewDriver: null == canReviewDriver
            ? _value.canReviewDriver
            : canReviewDriver // ignore: cast_nullable_to_non_nullable
                  as bool,
        restaurantReviewSubmitted: null == restaurantReviewSubmitted
            ? _value.restaurantReviewSubmitted
            : restaurantReviewSubmitted // ignore: cast_nullable_to_non_nullable
                  as bool,
        driverReviewSubmitted: null == driverReviewSubmitted
            ? _value.driverReviewSubmitted
            : driverReviewSubmitted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewEligibilityImpl implements _ReviewEligibility {
  const _$ReviewEligibilityImpl({
    required this.orderId,
    required this.canReviewRestaurant,
    required this.canReviewDriver,
    required this.restaurantReviewSubmitted,
    required this.driverReviewSubmitted,
  });

  factory _$ReviewEligibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewEligibilityImplFromJson(json);

  @override
  final String orderId;
  @override
  final bool canReviewRestaurant;
  @override
  final bool canReviewDriver;
  @override
  final bool restaurantReviewSubmitted;
  @override
  final bool driverReviewSubmitted;

  @override
  String toString() {
    return 'ReviewEligibility(orderId: $orderId, canReviewRestaurant: $canReviewRestaurant, canReviewDriver: $canReviewDriver, restaurantReviewSubmitted: $restaurantReviewSubmitted, driverReviewSubmitted: $driverReviewSubmitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewEligibilityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.canReviewRestaurant, canReviewRestaurant) ||
                other.canReviewRestaurant == canReviewRestaurant) &&
            (identical(other.canReviewDriver, canReviewDriver) ||
                other.canReviewDriver == canReviewDriver) &&
            (identical(
                  other.restaurantReviewSubmitted,
                  restaurantReviewSubmitted,
                ) ||
                other.restaurantReviewSubmitted == restaurantReviewSubmitted) &&
            (identical(other.driverReviewSubmitted, driverReviewSubmitted) ||
                other.driverReviewSubmitted == driverReviewSubmitted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderId,
    canReviewRestaurant,
    canReviewDriver,
    restaurantReviewSubmitted,
    driverReviewSubmitted,
  );

  /// Create a copy of ReviewEligibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewEligibilityImplCopyWith<_$ReviewEligibilityImpl> get copyWith =>
      __$$ReviewEligibilityImplCopyWithImpl<_$ReviewEligibilityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewEligibilityImplToJson(this);
  }
}

abstract class _ReviewEligibility implements ReviewEligibility {
  const factory _ReviewEligibility({
    required final String orderId,
    required final bool canReviewRestaurant,
    required final bool canReviewDriver,
    required final bool restaurantReviewSubmitted,
    required final bool driverReviewSubmitted,
  }) = _$ReviewEligibilityImpl;

  factory _ReviewEligibility.fromJson(Map<String, dynamic> json) =
      _$ReviewEligibilityImpl.fromJson;

  @override
  String get orderId;
  @override
  bool get canReviewRestaurant;
  @override
  bool get canReviewDriver;
  @override
  bool get restaurantReviewSubmitted;
  @override
  bool get driverReviewSubmitted;

  /// Create a copy of ReviewEligibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewEligibilityImplCopyWith<_$ReviewEligibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
