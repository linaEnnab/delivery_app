// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoneyDto _$MoneyDtoFromJson(Map<String, dynamic> json) {
  return _MoneyDto.fromJson(json);
}

/// @nodoc
mixin _$MoneyDto {
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this MoneyDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyDtoCopyWith<MoneyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyDtoCopyWith<$Res> {
  factory $MoneyDtoCopyWith(MoneyDto value, $Res Function(MoneyDto) then) =
      _$MoneyDtoCopyWithImpl<$Res, MoneyDto>;
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class _$MoneyDtoCopyWithImpl<$Res, $Val extends MoneyDto>
    implements $MoneyDtoCopyWith<$Res> {
  _$MoneyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currencyCode = null}) {
    return _then(
      _value.copyWith(
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            currencyCode: null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoneyDtoImplCopyWith<$Res>
    implements $MoneyDtoCopyWith<$Res> {
  factory _$$MoneyDtoImplCopyWith(
    _$MoneyDtoImpl value,
    $Res Function(_$MoneyDtoImpl) then,
  ) = __$$MoneyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class __$$MoneyDtoImplCopyWithImpl<$Res>
    extends _$MoneyDtoCopyWithImpl<$Res, _$MoneyDtoImpl>
    implements _$$MoneyDtoImplCopyWith<$Res> {
  __$$MoneyDtoImplCopyWithImpl(
    _$MoneyDtoImpl _value,
    $Res Function(_$MoneyDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoneyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currencyCode = null}) {
    return _then(
      _$MoneyDtoImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        currencyCode: null == currencyCode
            ? _value.currencyCode
            : currencyCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyDtoImpl extends _MoneyDto {
  const _$MoneyDtoImpl({required this.amount, this.currencyCode = 'AED'})
    : super._();

  factory _$MoneyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyDtoImplFromJson(json);

  @override
  final double amount;
  @override
  @JsonKey()
  final String currencyCode;

  @override
  String toString() {
    return 'MoneyDto(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyDtoImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of MoneyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyDtoImplCopyWith<_$MoneyDtoImpl> get copyWith =>
      __$$MoneyDtoImplCopyWithImpl<_$MoneyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyDtoImplToJson(this);
  }
}

abstract class _MoneyDto extends MoneyDto {
  const factory _MoneyDto({
    required final double amount,
    final String currencyCode,
  }) = _$MoneyDtoImpl;
  const _MoneyDto._() : super._();

  factory _MoneyDto.fromJson(Map<String, dynamic> json) =
      _$MoneyDtoImpl.fromJson;

  @override
  double get amount;
  @override
  String get currencyCode;

  /// Create a copy of MoneyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyDtoImplCopyWith<_$MoneyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
