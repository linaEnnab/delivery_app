// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentSession _$PaymentSessionFromJson(Map<String, dynamic> json) {
  return _PaymentSession.fromJson(json);
}

/// @nodoc
mixin _$PaymentSession {
  String get id => throw _privateConstructorUsedError;
  PaymentSessionStatus get status => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get clientSecret => throw _privateConstructorUsedError;
  String? get redirectUrl => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentSessionCopyWith<PaymentSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSessionCopyWith<$Res> {
  factory $PaymentSessionCopyWith(
    PaymentSession value,
    $Res Function(PaymentSession) then,
  ) = _$PaymentSessionCopyWithImpl<$Res, PaymentSession>;
  @useResult
  $Res call({
    String id,
    PaymentSessionStatus status,
    Money amount,
    PaymentMethod paymentMethod,
    String? orderId,
    String? clientSecret,
    String? redirectUrl,
    DateTime? expiresAt,
  });

  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class _$PaymentSessionCopyWithImpl<$Res, $Val extends PaymentSession>
    implements $PaymentSessionCopyWith<$Res> {
  _$PaymentSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? amount = null,
    Object? paymentMethod = null,
    Object? orderId = freezed,
    Object? clientSecret = freezed,
    Object? redirectUrl = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PaymentSessionStatus,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as Money,
            paymentMethod: null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as PaymentMethod,
            orderId: freezed == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            clientSecret: freezed == clientSecret
                ? _value.clientSecret
                : clientSecret // ignore: cast_nullable_to_non_nullable
                      as String?,
            redirectUrl: freezed == redirectUrl
                ? _value.redirectUrl
                : redirectUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentSessionImplCopyWith<$Res>
    implements $PaymentSessionCopyWith<$Res> {
  factory _$$PaymentSessionImplCopyWith(
    _$PaymentSessionImpl value,
    $Res Function(_$PaymentSessionImpl) then,
  ) = __$$PaymentSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    PaymentSessionStatus status,
    Money amount,
    PaymentMethod paymentMethod,
    String? orderId,
    String? clientSecret,
    String? redirectUrl,
    DateTime? expiresAt,
  });

  @override
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$PaymentSessionImplCopyWithImpl<$Res>
    extends _$PaymentSessionCopyWithImpl<$Res, _$PaymentSessionImpl>
    implements _$$PaymentSessionImplCopyWith<$Res> {
  __$$PaymentSessionImplCopyWithImpl(
    _$PaymentSessionImpl _value,
    $Res Function(_$PaymentSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? amount = null,
    Object? paymentMethod = null,
    Object? orderId = freezed,
    Object? clientSecret = freezed,
    Object? redirectUrl = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(
      _$PaymentSessionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PaymentSessionStatus,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as Money,
        paymentMethod: null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as PaymentMethod,
        orderId: freezed == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        clientSecret: freezed == clientSecret
            ? _value.clientSecret
            : clientSecret // ignore: cast_nullable_to_non_nullable
                  as String?,
        redirectUrl: freezed == redirectUrl
            ? _value.redirectUrl
            : redirectUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentSessionImpl implements _PaymentSession {
  const _$PaymentSessionImpl({
    required this.id,
    required this.status,
    required this.amount,
    required this.paymentMethod,
    this.orderId,
    this.clientSecret,
    this.redirectUrl,
    this.expiresAt,
  });

  factory _$PaymentSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentSessionImplFromJson(json);

  @override
  final String id;
  @override
  final PaymentSessionStatus status;
  @override
  final Money amount;
  @override
  final PaymentMethod paymentMethod;
  @override
  final String? orderId;
  @override
  final String? clientSecret;
  @override
  final String? redirectUrl;
  @override
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'PaymentSession(id: $id, status: $status, amount: $amount, paymentMethod: $paymentMethod, orderId: $orderId, clientSecret: $clientSecret, redirectUrl: $redirectUrl, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    amount,
    paymentMethod,
    orderId,
    clientSecret,
    redirectUrl,
    expiresAt,
  );

  /// Create a copy of PaymentSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSessionImplCopyWith<_$PaymentSessionImpl> get copyWith =>
      __$$PaymentSessionImplCopyWithImpl<_$PaymentSessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentSessionImplToJson(this);
  }
}

abstract class _PaymentSession implements PaymentSession {
  const factory _PaymentSession({
    required final String id,
    required final PaymentSessionStatus status,
    required final Money amount,
    required final PaymentMethod paymentMethod,
    final String? orderId,
    final String? clientSecret,
    final String? redirectUrl,
    final DateTime? expiresAt,
  }) = _$PaymentSessionImpl;

  factory _PaymentSession.fromJson(Map<String, dynamic> json) =
      _$PaymentSessionImpl.fromJson;

  @override
  String get id;
  @override
  PaymentSessionStatus get status;
  @override
  Money get amount;
  @override
  PaymentMethod get paymentMethod;
  @override
  String? get orderId;
  @override
  String? get clientSecret;
  @override
  String? get redirectUrl;
  @override
  DateTime? get expiresAt;

  /// Create a copy of PaymentSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSessionImplCopyWith<_$PaymentSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
