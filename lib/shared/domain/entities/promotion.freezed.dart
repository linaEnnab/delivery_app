// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Promotion _$PromotionFromJson(Map<String, dynamic> json) {
  return _Promotion.fromJson(json);
}

/// @nodoc
mixin _$Promotion {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get deepLinkRoute => throw _privateConstructorUsedError;
  String? get restaurantId => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validUntil => throw _privateConstructorUsedError;
  bool get isPlatformWide => throw _privateConstructorUsedError;

  /// Serializes this Promotion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res, Promotion>;
  @useResult
  $Res call({
    String id,
    String title,
    String? subtitle,
    String? imageUrl,
    String? deepLinkRoute,
    String? restaurantId,
    DateTime? validFrom,
    DateTime? validUntil,
    bool isPlatformWide,
  });
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res, $Val extends Promotion>
    implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? imageUrl = freezed,
    Object? deepLinkRoute = freezed,
    Object? restaurantId = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? isPlatformWide = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            subtitle: freezed == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            deepLinkRoute: freezed == deepLinkRoute
                ? _value.deepLinkRoute
                : deepLinkRoute // ignore: cast_nullable_to_non_nullable
                      as String?,
            restaurantId: freezed == restaurantId
                ? _value.restaurantId
                : restaurantId // ignore: cast_nullable_to_non_nullable
                      as String?,
            validFrom: freezed == validFrom
                ? _value.validFrom
                : validFrom // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            validUntil: freezed == validUntil
                ? _value.validUntil
                : validUntil // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isPlatformWide: null == isPlatformWide
                ? _value.isPlatformWide
                : isPlatformWide // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PromotionImplCopyWith<$Res>
    implements $PromotionCopyWith<$Res> {
  factory _$$PromotionImplCopyWith(
    _$PromotionImpl value,
    $Res Function(_$PromotionImpl) then,
  ) = __$$PromotionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String? subtitle,
    String? imageUrl,
    String? deepLinkRoute,
    String? restaurantId,
    DateTime? validFrom,
    DateTime? validUntil,
    bool isPlatformWide,
  });
}

/// @nodoc
class __$$PromotionImplCopyWithImpl<$Res>
    extends _$PromotionCopyWithImpl<$Res, _$PromotionImpl>
    implements _$$PromotionImplCopyWith<$Res> {
  __$$PromotionImplCopyWithImpl(
    _$PromotionImpl _value,
    $Res Function(_$PromotionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? imageUrl = freezed,
    Object? deepLinkRoute = freezed,
    Object? restaurantId = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? isPlatformWide = null,
  }) {
    return _then(
      _$PromotionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: freezed == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        deepLinkRoute: freezed == deepLinkRoute
            ? _value.deepLinkRoute
            : deepLinkRoute // ignore: cast_nullable_to_non_nullable
                  as String?,
        restaurantId: freezed == restaurantId
            ? _value.restaurantId
            : restaurantId // ignore: cast_nullable_to_non_nullable
                  as String?,
        validFrom: freezed == validFrom
            ? _value.validFrom
            : validFrom // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        validUntil: freezed == validUntil
            ? _value.validUntil
            : validUntil // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isPlatformWide: null == isPlatformWide
            ? _value.isPlatformWide
            : isPlatformWide // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionImpl implements _Promotion {
  const _$PromotionImpl({
    required this.id,
    required this.title,
    this.subtitle,
    this.imageUrl,
    this.deepLinkRoute,
    this.restaurantId,
    this.validFrom,
    this.validUntil,
    this.isPlatformWide = false,
  });

  factory _$PromotionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String? imageUrl;
  @override
  final String? deepLinkRoute;
  @override
  final String? restaurantId;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  @JsonKey()
  final bool isPlatformWide;

  @override
  String toString() {
    return 'Promotion(id: $id, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, deepLinkRoute: $deepLinkRoute, restaurantId: $restaurantId, validFrom: $validFrom, validUntil: $validUntil, isPlatformWide: $isPlatformWide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.deepLinkRoute, deepLinkRoute) ||
                other.deepLinkRoute == deepLinkRoute) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.isPlatformWide, isPlatformWide) ||
                other.isPlatformWide == isPlatformWide));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    subtitle,
    imageUrl,
    deepLinkRoute,
    restaurantId,
    validFrom,
    validUntil,
    isPlatformWide,
  );

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionImplCopyWith<_$PromotionImpl> get copyWith =>
      __$$PromotionImplCopyWithImpl<_$PromotionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionImplToJson(this);
  }
}

abstract class _Promotion implements Promotion {
  const factory _Promotion({
    required final String id,
    required final String title,
    final String? subtitle,
    final String? imageUrl,
    final String? deepLinkRoute,
    final String? restaurantId,
    final DateTime? validFrom,
    final DateTime? validUntil,
    final bool isPlatformWide,
  }) = _$PromotionImpl;

  factory _Promotion.fromJson(Map<String, dynamic> json) =
      _$PromotionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get subtitle;
  @override
  String? get imageUrl;
  @override
  String? get deepLinkRoute;
  @override
  String? get restaurantId;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validUntil;
  @override
  bool get isPlatformWide;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionImplCopyWith<_$PromotionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
