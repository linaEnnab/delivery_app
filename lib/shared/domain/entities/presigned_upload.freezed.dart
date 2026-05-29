// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PresignedUpload _$PresignedUploadFromJson(Map<String, dynamic> json) {
  return _PresignedUpload.fromJson(json);
}

/// @nodoc
mixin _$PresignedUpload {
  String get mediaId => throw _privateConstructorUsedError;
  String get uploadUrl => throw _privateConstructorUsedError;
  String get httpMethod => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  Map<String, String>? get formFields => throw _privateConstructorUsedError;

  /// Serializes this PresignedUpload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresignedUpload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresignedUploadCopyWith<PresignedUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresignedUploadCopyWith<$Res> {
  factory $PresignedUploadCopyWith(
    PresignedUpload value,
    $Res Function(PresignedUpload) then,
  ) = _$PresignedUploadCopyWithImpl<$Res, PresignedUpload>;
  @useResult
  $Res call({
    String mediaId,
    String uploadUrl,
    String httpMethod,
    Map<String, String>? headers,
    Map<String, String>? formFields,
  });
}

/// @nodoc
class _$PresignedUploadCopyWithImpl<$Res, $Val extends PresignedUpload>
    implements $PresignedUploadCopyWith<$Res> {
  _$PresignedUploadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresignedUpload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = null,
    Object? uploadUrl = null,
    Object? httpMethod = null,
    Object? headers = freezed,
    Object? formFields = freezed,
  }) {
    return _then(
      _value.copyWith(
            mediaId: null == mediaId
                ? _value.mediaId
                : mediaId // ignore: cast_nullable_to_non_nullable
                      as String,
            uploadUrl: null == uploadUrl
                ? _value.uploadUrl
                : uploadUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            httpMethod: null == httpMethod
                ? _value.httpMethod
                : httpMethod // ignore: cast_nullable_to_non_nullable
                      as String,
            headers: freezed == headers
                ? _value.headers
                : headers // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>?,
            formFields: freezed == formFields
                ? _value.formFields
                : formFields // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PresignedUploadImplCopyWith<$Res>
    implements $PresignedUploadCopyWith<$Res> {
  factory _$$PresignedUploadImplCopyWith(
    _$PresignedUploadImpl value,
    $Res Function(_$PresignedUploadImpl) then,
  ) = __$$PresignedUploadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String mediaId,
    String uploadUrl,
    String httpMethod,
    Map<String, String>? headers,
    Map<String, String>? formFields,
  });
}

/// @nodoc
class __$$PresignedUploadImplCopyWithImpl<$Res>
    extends _$PresignedUploadCopyWithImpl<$Res, _$PresignedUploadImpl>
    implements _$$PresignedUploadImplCopyWith<$Res> {
  __$$PresignedUploadImplCopyWithImpl(
    _$PresignedUploadImpl _value,
    $Res Function(_$PresignedUploadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PresignedUpload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = null,
    Object? uploadUrl = null,
    Object? httpMethod = null,
    Object? headers = freezed,
    Object? formFields = freezed,
  }) {
    return _then(
      _$PresignedUploadImpl(
        mediaId: null == mediaId
            ? _value.mediaId
            : mediaId // ignore: cast_nullable_to_non_nullable
                  as String,
        uploadUrl: null == uploadUrl
            ? _value.uploadUrl
            : uploadUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        httpMethod: null == httpMethod
            ? _value.httpMethod
            : httpMethod // ignore: cast_nullable_to_non_nullable
                  as String,
        headers: freezed == headers
            ? _value._headers
            : headers // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
        formFields: freezed == formFields
            ? _value._formFields
            : formFields // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PresignedUploadImpl implements _PresignedUpload {
  const _$PresignedUploadImpl({
    required this.mediaId,
    required this.uploadUrl,
    this.httpMethod = 'PUT',
    final Map<String, String>? headers,
    final Map<String, String>? formFields,
  }) : _headers = headers,
       _formFields = formFields;

  factory _$PresignedUploadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresignedUploadImplFromJson(json);

  @override
  final String mediaId;
  @override
  final String uploadUrl;
  @override
  @JsonKey()
  final String httpMethod;
  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _formFields;
  @override
  Map<String, String>? get formFields {
    final value = _formFields;
    if (value == null) return null;
    if (_formFields is EqualUnmodifiableMapView) return _formFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PresignedUpload(mediaId: $mediaId, uploadUrl: $uploadUrl, httpMethod: $httpMethod, headers: $headers, formFields: $formFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresignedUploadImpl &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.httpMethod, httpMethod) ||
                other.httpMethod == httpMethod) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(
              other._formFields,
              _formFields,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    mediaId,
    uploadUrl,
    httpMethod,
    const DeepCollectionEquality().hash(_headers),
    const DeepCollectionEquality().hash(_formFields),
  );

  /// Create a copy of PresignedUpload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresignedUploadImplCopyWith<_$PresignedUploadImpl> get copyWith =>
      __$$PresignedUploadImplCopyWithImpl<_$PresignedUploadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PresignedUploadImplToJson(this);
  }
}

abstract class _PresignedUpload implements PresignedUpload {
  const factory _PresignedUpload({
    required final String mediaId,
    required final String uploadUrl,
    final String httpMethod,
    final Map<String, String>? headers,
    final Map<String, String>? formFields,
  }) = _$PresignedUploadImpl;

  factory _PresignedUpload.fromJson(Map<String, dynamic> json) =
      _$PresignedUploadImpl.fromJson;

  @override
  String get mediaId;
  @override
  String get uploadUrl;
  @override
  String get httpMethod;
  @override
  Map<String, String>? get headers;
  @override
  Map<String, String>? get formFields;

  /// Create a copy of PresignedUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresignedUploadImplCopyWith<_$PresignedUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
