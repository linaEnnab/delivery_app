// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletBalance _$WalletBalanceFromJson(Map<String, dynamic> json) {
  return _WalletBalance.fromJson(json);
}

/// @nodoc
mixin _$WalletBalance {
  Money get available => throw _privateConstructorUsedError;
  Money get pending => throw _privateConstructorUsedError;

  /// Serializes this WalletBalance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletBalanceCopyWith<WalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceCopyWith<$Res> {
  factory $WalletBalanceCopyWith(
    WalletBalance value,
    $Res Function(WalletBalance) then,
  ) = _$WalletBalanceCopyWithImpl<$Res, WalletBalance>;
  @useResult
  $Res call({Money available, Money pending});

  $MoneyCopyWith<$Res> get available;
  $MoneyCopyWith<$Res> get pending;
}

/// @nodoc
class _$WalletBalanceCopyWithImpl<$Res, $Val extends WalletBalance>
    implements $WalletBalanceCopyWith<$Res> {
  _$WalletBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? available = null, Object? pending = null}) {
    return _then(
      _value.copyWith(
            available: null == available
                ? _value.available
                : available // ignore: cast_nullable_to_non_nullable
                      as Money,
            pending: null == pending
                ? _value.pending
                : pending // ignore: cast_nullable_to_non_nullable
                      as Money,
          )
          as $Val,
    );
  }

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get available {
    return $MoneyCopyWith<$Res>(_value.available, (value) {
      return _then(_value.copyWith(available: value) as $Val);
    });
  }

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get pending {
    return $MoneyCopyWith<$Res>(_value.pending, (value) {
      return _then(_value.copyWith(pending: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletBalanceImplCopyWith<$Res>
    implements $WalletBalanceCopyWith<$Res> {
  factory _$$WalletBalanceImplCopyWith(
    _$WalletBalanceImpl value,
    $Res Function(_$WalletBalanceImpl) then,
  ) = __$$WalletBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money available, Money pending});

  @override
  $MoneyCopyWith<$Res> get available;
  @override
  $MoneyCopyWith<$Res> get pending;
}

/// @nodoc
class __$$WalletBalanceImplCopyWithImpl<$Res>
    extends _$WalletBalanceCopyWithImpl<$Res, _$WalletBalanceImpl>
    implements _$$WalletBalanceImplCopyWith<$Res> {
  __$$WalletBalanceImplCopyWithImpl(
    _$WalletBalanceImpl _value,
    $Res Function(_$WalletBalanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? available = null, Object? pending = null}) {
    return _then(
      _$WalletBalanceImpl(
        available: null == available
            ? _value.available
            : available // ignore: cast_nullable_to_non_nullable
                  as Money,
        pending: null == pending
            ? _value.pending
            : pending // ignore: cast_nullable_to_non_nullable
                  as Money,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletBalanceImpl implements _WalletBalance {
  const _$WalletBalanceImpl({
    required this.available,
    this.pending = Money.zero,
  });

  factory _$WalletBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletBalanceImplFromJson(json);

  @override
  final Money available;
  @override
  @JsonKey()
  final Money pending;

  @override
  String toString() {
    return 'WalletBalance(available: $available, pending: $pending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBalanceImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.pending, pending) || other.pending == pending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, available, pending);

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletBalanceImplCopyWith<_$WalletBalanceImpl> get copyWith =>
      __$$WalletBalanceImplCopyWithImpl<_$WalletBalanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletBalanceImplToJson(this);
  }
}

abstract class _WalletBalance implements WalletBalance {
  const factory _WalletBalance({
    required final Money available,
    final Money pending,
  }) = _$WalletBalanceImpl;

  factory _WalletBalance.fromJson(Map<String, dynamic> json) =
      _$WalletBalanceImpl.fromJson;

  @override
  Money get available;
  @override
  Money get pending;

  /// Create a copy of WalletBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletBalanceImplCopyWith<_$WalletBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletTransaction _$WalletTransactionFromJson(Map<String, dynamic> json) {
  return _WalletTransaction.fromJson(json);
}

/// @nodoc
mixin _$WalletTransaction {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;

  /// Serializes this WalletTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionCopyWith<WalletTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionCopyWith<$Res> {
  factory $WalletTransactionCopyWith(
    WalletTransaction value,
    $Res Function(WalletTransaction) then,
  ) = _$WalletTransactionCopyWithImpl<$Res, WalletTransaction>;
  @useResult
  $Res call({
    String id,
    String description,
    Money amount,
    DateTime createdAt,
    String? orderId,
  });

  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class _$WalletTransactionCopyWithImpl<$Res, $Val extends WalletTransaction>
    implements $WalletTransactionCopyWith<$Res> {
  _$WalletTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? orderId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as Money,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            orderId: freezed == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of WalletTransaction
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
abstract class _$$WalletTransactionImplCopyWith<$Res>
    implements $WalletTransactionCopyWith<$Res> {
  factory _$$WalletTransactionImplCopyWith(
    _$WalletTransactionImpl value,
    $Res Function(_$WalletTransactionImpl) then,
  ) = __$$WalletTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String description,
    Money amount,
    DateTime createdAt,
    String? orderId,
  });

  @override
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$WalletTransactionImplCopyWithImpl<$Res>
    extends _$WalletTransactionCopyWithImpl<$Res, _$WalletTransactionImpl>
    implements _$$WalletTransactionImplCopyWith<$Res> {
  __$$WalletTransactionImplCopyWithImpl(
    _$WalletTransactionImpl _value,
    $Res Function(_$WalletTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? orderId = freezed,
  }) {
    return _then(
      _$WalletTransactionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as Money,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        orderId: freezed == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletTransactionImpl implements _WalletTransaction {
  const _$WalletTransactionImpl({
    required this.id,
    required this.description,
    required this.amount,
    required this.createdAt,
    this.orderId,
  });

  factory _$WalletTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final Money amount;
  @override
  final DateTime createdAt;
  @override
  final String? orderId;

  @override
  String toString() {
    return 'WalletTransaction(id: $id, description: $description, amount: $amount, createdAt: $createdAt, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, amount, createdAt, orderId);

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionImplCopyWith<_$WalletTransactionImpl> get copyWith =>
      __$$WalletTransactionImplCopyWithImpl<_$WalletTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTransactionImplToJson(this);
  }
}

abstract class _WalletTransaction implements WalletTransaction {
  const factory _WalletTransaction({
    required final String id,
    required final String description,
    required final Money amount,
    required final DateTime createdAt,
    final String? orderId,
  }) = _$WalletTransactionImpl;

  factory _WalletTransaction.fromJson(Map<String, dynamic> json) =
      _$WalletTransactionImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  Money get amount;
  @override
  DateTime get createdAt;
  @override
  String? get orderId;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionImplCopyWith<_$WalletTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
