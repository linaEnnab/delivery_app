// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loyalty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoyaltyBalance _$LoyaltyBalanceFromJson(Map<String, dynamic> json) {
  return _LoyaltyBalance.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyBalance {
  int get points => throw _privateConstructorUsedError;
  int get lifetimeEarned => throw _privateConstructorUsedError;
  int get lifetimeRedeemed => throw _privateConstructorUsedError;

  /// Points pending until order delivery (optional API snapshot).
  int get pendingPoints => throw _privateConstructorUsedError;

  /// Serializes this LoyaltyBalance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoyaltyBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoyaltyBalanceCopyWith<LoyaltyBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyBalanceCopyWith<$Res> {
  factory $LoyaltyBalanceCopyWith(
    LoyaltyBalance value,
    $Res Function(LoyaltyBalance) then,
  ) = _$LoyaltyBalanceCopyWithImpl<$Res, LoyaltyBalance>;
  @useResult
  $Res call({
    int points,
    int lifetimeEarned,
    int lifetimeRedeemed,
    int pendingPoints,
  });
}

/// @nodoc
class _$LoyaltyBalanceCopyWithImpl<$Res, $Val extends LoyaltyBalance>
    implements $LoyaltyBalanceCopyWith<$Res> {
  _$LoyaltyBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoyaltyBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? lifetimeEarned = null,
    Object? lifetimeRedeemed = null,
    Object? pendingPoints = null,
  }) {
    return _then(
      _value.copyWith(
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
            lifetimeEarned: null == lifetimeEarned
                ? _value.lifetimeEarned
                : lifetimeEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            lifetimeRedeemed: null == lifetimeRedeemed
                ? _value.lifetimeRedeemed
                : lifetimeRedeemed // ignore: cast_nullable_to_non_nullable
                      as int,
            pendingPoints: null == pendingPoints
                ? _value.pendingPoints
                : pendingPoints // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoyaltyBalanceImplCopyWith<$Res>
    implements $LoyaltyBalanceCopyWith<$Res> {
  factory _$$LoyaltyBalanceImplCopyWith(
    _$LoyaltyBalanceImpl value,
    $Res Function(_$LoyaltyBalanceImpl) then,
  ) = __$$LoyaltyBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int points,
    int lifetimeEarned,
    int lifetimeRedeemed,
    int pendingPoints,
  });
}

/// @nodoc
class __$$LoyaltyBalanceImplCopyWithImpl<$Res>
    extends _$LoyaltyBalanceCopyWithImpl<$Res, _$LoyaltyBalanceImpl>
    implements _$$LoyaltyBalanceImplCopyWith<$Res> {
  __$$LoyaltyBalanceImplCopyWithImpl(
    _$LoyaltyBalanceImpl _value,
    $Res Function(_$LoyaltyBalanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoyaltyBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? lifetimeEarned = null,
    Object? lifetimeRedeemed = null,
    Object? pendingPoints = null,
  }) {
    return _then(
      _$LoyaltyBalanceImpl(
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
        lifetimeEarned: null == lifetimeEarned
            ? _value.lifetimeEarned
            : lifetimeEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        lifetimeRedeemed: null == lifetimeRedeemed
            ? _value.lifetimeRedeemed
            : lifetimeRedeemed // ignore: cast_nullable_to_non_nullable
                  as int,
        pendingPoints: null == pendingPoints
            ? _value.pendingPoints
            : pendingPoints // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoyaltyBalanceImpl implements _LoyaltyBalance {
  const _$LoyaltyBalanceImpl({
    required this.points,
    required this.lifetimeEarned,
    required this.lifetimeRedeemed,
    this.pendingPoints = 0,
  });

  factory _$LoyaltyBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoyaltyBalanceImplFromJson(json);

  @override
  final int points;
  @override
  final int lifetimeEarned;
  @override
  final int lifetimeRedeemed;

  /// Points pending until order delivery (optional API snapshot).
  @override
  @JsonKey()
  final int pendingPoints;

  @override
  String toString() {
    return 'LoyaltyBalance(points: $points, lifetimeEarned: $lifetimeEarned, lifetimeRedeemed: $lifetimeRedeemed, pendingPoints: $pendingPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyBalanceImpl &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.lifetimeEarned, lifetimeEarned) ||
                other.lifetimeEarned == lifetimeEarned) &&
            (identical(other.lifetimeRedeemed, lifetimeRedeemed) ||
                other.lifetimeRedeemed == lifetimeRedeemed) &&
            (identical(other.pendingPoints, pendingPoints) ||
                other.pendingPoints == pendingPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    points,
    lifetimeEarned,
    lifetimeRedeemed,
    pendingPoints,
  );

  /// Create a copy of LoyaltyBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyBalanceImplCopyWith<_$LoyaltyBalanceImpl> get copyWith =>
      __$$LoyaltyBalanceImplCopyWithImpl<_$LoyaltyBalanceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyBalanceImplToJson(this);
  }
}

abstract class _LoyaltyBalance implements LoyaltyBalance {
  const factory _LoyaltyBalance({
    required final int points,
    required final int lifetimeEarned,
    required final int lifetimeRedeemed,
    final int pendingPoints,
  }) = _$LoyaltyBalanceImpl;

  factory _LoyaltyBalance.fromJson(Map<String, dynamic> json) =
      _$LoyaltyBalanceImpl.fromJson;

  @override
  int get points;
  @override
  int get lifetimeEarned;
  @override
  int get lifetimeRedeemed;

  /// Points pending until order delivery (optional API snapshot).
  @override
  int get pendingPoints;

  /// Create a copy of LoyaltyBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoyaltyBalanceImplCopyWith<_$LoyaltyBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  RewardType get type => throw _privateConstructorUsedError;
  int get pointsCost => throw _privateConstructorUsedError;
  Money? get discountValue => throw _privateConstructorUsedError;
  double? get discountPercentage => throw _privateConstructorUsedError;
  String? get couponCode => throw _privateConstructorUsedError;
  String? get restaurantId => throw _privateConstructorUsedError;
  String? get restaurantName => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this Reward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    RewardType type,
    int pointsCost,
    Money? discountValue,
    double? discountPercentage,
    String? couponCode,
    String? restaurantId,
    String? restaurantName,
    DateTime? expiresAt,
    bool isAvailable,
  });

  $MoneyCopyWith<$Res>? get discountValue;
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? pointsCost = null,
    Object? discountValue = freezed,
    Object? discountPercentage = freezed,
    Object? couponCode = freezed,
    Object? restaurantId = freezed,
    Object? restaurantName = freezed,
    Object? expiresAt = freezed,
    Object? isAvailable = null,
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
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as RewardType,
            pointsCost: null == pointsCost
                ? _value.pointsCost
                : pointsCost // ignore: cast_nullable_to_non_nullable
                      as int,
            discountValue: freezed == discountValue
                ? _value.discountValue
                : discountValue // ignore: cast_nullable_to_non_nullable
                      as Money?,
            discountPercentage: freezed == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                      as double?,
            couponCode: freezed == couponCode
                ? _value.couponCode
                : couponCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            restaurantId: freezed == restaurantId
                ? _value.restaurantId
                : restaurantId // ignore: cast_nullable_to_non_nullable
                      as String?,
            restaurantName: freezed == restaurantName
                ? _value.restaurantName
                : restaurantName // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get discountValue {
    if (_value.discountValue == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.discountValue!, (value) {
      return _then(_value.copyWith(discountValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardImplCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$RewardImplCopyWith(
    _$RewardImpl value,
    $Res Function(_$RewardImpl) then,
  ) = __$$RewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    RewardType type,
    int pointsCost,
    Money? discountValue,
    double? discountPercentage,
    String? couponCode,
    String? restaurantId,
    String? restaurantName,
    DateTime? expiresAt,
    bool isAvailable,
  });

  @override
  $MoneyCopyWith<$Res>? get discountValue;
}

/// @nodoc
class __$$RewardImplCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$RewardImpl>
    implements _$$RewardImplCopyWith<$Res> {
  __$$RewardImplCopyWithImpl(
    _$RewardImpl _value,
    $Res Function(_$RewardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? pointsCost = null,
    Object? discountValue = freezed,
    Object? discountPercentage = freezed,
    Object? couponCode = freezed,
    Object? restaurantId = freezed,
    Object? restaurantName = freezed,
    Object? expiresAt = freezed,
    Object? isAvailable = null,
  }) {
    return _then(
      _$RewardImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RewardType,
        pointsCost: null == pointsCost
            ? _value.pointsCost
            : pointsCost // ignore: cast_nullable_to_non_nullable
                  as int,
        discountValue: freezed == discountValue
            ? _value.discountValue
            : discountValue // ignore: cast_nullable_to_non_nullable
                  as Money?,
        discountPercentage: freezed == discountPercentage
            ? _value.discountPercentage
            : discountPercentage // ignore: cast_nullable_to_non_nullable
                  as double?,
        couponCode: freezed == couponCode
            ? _value.couponCode
            : couponCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        restaurantId: freezed == restaurantId
            ? _value.restaurantId
            : restaurantId // ignore: cast_nullable_to_non_nullable
                  as String?,
        restaurantName: freezed == restaurantName
            ? _value.restaurantName
            : restaurantName // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
class _$RewardImpl implements _Reward {
  const _$RewardImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.pointsCost,
    this.discountValue,
    this.discountPercentage,
    this.couponCode,
    this.restaurantId,
    this.restaurantName,
    this.expiresAt,
    this.isAvailable = true,
  });

  factory _$RewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final RewardType type;
  @override
  final int pointsCost;
  @override
  final Money? discountValue;
  @override
  final double? discountPercentage;
  @override
  final String? couponCode;
  @override
  final String? restaurantId;
  @override
  final String? restaurantName;
  @override
  final DateTime? expiresAt;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'Reward(id: $id, title: $title, description: $description, type: $type, pointsCost: $pointsCost, discountValue: $discountValue, discountPercentage: $discountPercentage, couponCode: $couponCode, restaurantId: $restaurantId, restaurantName: $restaurantName, expiresAt: $expiresAt, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pointsCost, pointsCost) ||
                other.pointsCost == pointsCost) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    type,
    pointsCost,
    discountValue,
    discountPercentage,
    couponCode,
    restaurantId,
    restaurantName,
    expiresAt,
    isAvailable,
  );

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      __$$RewardImplCopyWithImpl<_$RewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardImplToJson(this);
  }
}

abstract class _Reward implements Reward {
  const factory _Reward({
    required final String id,
    required final String title,
    required final String description,
    required final RewardType type,
    required final int pointsCost,
    final Money? discountValue,
    final double? discountPercentage,
    final String? couponCode,
    final String? restaurantId,
    final String? restaurantName,
    final DateTime? expiresAt,
    final bool isAvailable,
  }) = _$RewardImpl;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$RewardImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  RewardType get type;
  @override
  int get pointsCost;
  @override
  Money? get discountValue;
  @override
  double? get discountPercentage;
  @override
  String? get couponCode;
  @override
  String? get restaurantId;
  @override
  String? get restaurantName;
  @override
  DateTime? get expiresAt;
  @override
  bool get isAvailable;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FreeDeliveryReward _$FreeDeliveryRewardFromJson(Map<String, dynamic> json) {
  return _FreeDeliveryReward.fromJson(json);
}

/// @nodoc
mixin _$FreeDeliveryReward {
  String get id => throw _privateConstructorUsedError;
  DateTime get grantedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get grantSource => throw _privateConstructorUsedError;
  String? get sourceOrderId => throw _privateConstructorUsedError;
  String? get spinWheelSessionId => throw _privateConstructorUsedError;
  bool get isConsumed => throw _privateConstructorUsedError;
  DateTime? get consumedAt => throw _privateConstructorUsedError;
  String? get consumedOnOrderId => throw _privateConstructorUsedError;

  /// Serializes this FreeDeliveryReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreeDeliveryReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreeDeliveryRewardCopyWith<FreeDeliveryReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDeliveryRewardCopyWith<$Res> {
  factory $FreeDeliveryRewardCopyWith(
    FreeDeliveryReward value,
    $Res Function(FreeDeliveryReward) then,
  ) = _$FreeDeliveryRewardCopyWithImpl<$Res, FreeDeliveryReward>;
  @useResult
  $Res call({
    String id,
    DateTime grantedAt,
    DateTime? expiresAt,
    String? grantSource,
    String? sourceOrderId,
    String? spinWheelSessionId,
    bool isConsumed,
    DateTime? consumedAt,
    String? consumedOnOrderId,
  });
}

/// @nodoc
class _$FreeDeliveryRewardCopyWithImpl<$Res, $Val extends FreeDeliveryReward>
    implements $FreeDeliveryRewardCopyWith<$Res> {
  _$FreeDeliveryRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeDeliveryReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? grantedAt = null,
    Object? expiresAt = freezed,
    Object? grantSource = freezed,
    Object? sourceOrderId = freezed,
    Object? spinWheelSessionId = freezed,
    Object? isConsumed = null,
    Object? consumedAt = freezed,
    Object? consumedOnOrderId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            grantedAt: null == grantedAt
                ? _value.grantedAt
                : grantedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            grantSource: freezed == grantSource
                ? _value.grantSource
                : grantSource // ignore: cast_nullable_to_non_nullable
                      as String?,
            sourceOrderId: freezed == sourceOrderId
                ? _value.sourceOrderId
                : sourceOrderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            spinWheelSessionId: freezed == spinWheelSessionId
                ? _value.spinWheelSessionId
                : spinWheelSessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isConsumed: null == isConsumed
                ? _value.isConsumed
                : isConsumed // ignore: cast_nullable_to_non_nullable
                      as bool,
            consumedAt: freezed == consumedAt
                ? _value.consumedAt
                : consumedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            consumedOnOrderId: freezed == consumedOnOrderId
                ? _value.consumedOnOrderId
                : consumedOnOrderId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FreeDeliveryRewardImplCopyWith<$Res>
    implements $FreeDeliveryRewardCopyWith<$Res> {
  factory _$$FreeDeliveryRewardImplCopyWith(
    _$FreeDeliveryRewardImpl value,
    $Res Function(_$FreeDeliveryRewardImpl) then,
  ) = __$$FreeDeliveryRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    DateTime grantedAt,
    DateTime? expiresAt,
    String? grantSource,
    String? sourceOrderId,
    String? spinWheelSessionId,
    bool isConsumed,
    DateTime? consumedAt,
    String? consumedOnOrderId,
  });
}

/// @nodoc
class __$$FreeDeliveryRewardImplCopyWithImpl<$Res>
    extends _$FreeDeliveryRewardCopyWithImpl<$Res, _$FreeDeliveryRewardImpl>
    implements _$$FreeDeliveryRewardImplCopyWith<$Res> {
  __$$FreeDeliveryRewardImplCopyWithImpl(
    _$FreeDeliveryRewardImpl _value,
    $Res Function(_$FreeDeliveryRewardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FreeDeliveryReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? grantedAt = null,
    Object? expiresAt = freezed,
    Object? grantSource = freezed,
    Object? sourceOrderId = freezed,
    Object? spinWheelSessionId = freezed,
    Object? isConsumed = null,
    Object? consumedAt = freezed,
    Object? consumedOnOrderId = freezed,
  }) {
    return _then(
      _$FreeDeliveryRewardImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        grantedAt: null == grantedAt
            ? _value.grantedAt
            : grantedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        grantSource: freezed == grantSource
            ? _value.grantSource
            : grantSource // ignore: cast_nullable_to_non_nullable
                  as String?,
        sourceOrderId: freezed == sourceOrderId
            ? _value.sourceOrderId
            : sourceOrderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        spinWheelSessionId: freezed == spinWheelSessionId
            ? _value.spinWheelSessionId
            : spinWheelSessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isConsumed: null == isConsumed
            ? _value.isConsumed
            : isConsumed // ignore: cast_nullable_to_non_nullable
                  as bool,
        consumedAt: freezed == consumedAt
            ? _value.consumedAt
            : consumedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        consumedOnOrderId: freezed == consumedOnOrderId
            ? _value.consumedOnOrderId
            : consumedOnOrderId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeDeliveryRewardImpl implements _FreeDeliveryReward {
  const _$FreeDeliveryRewardImpl({
    required this.id,
    required this.grantedAt,
    this.expiresAt,
    this.grantSource,
    this.sourceOrderId,
    this.spinWheelSessionId,
    this.isConsumed = false,
    this.consumedAt,
    this.consumedOnOrderId,
  });

  factory _$FreeDeliveryRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeDeliveryRewardImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime grantedAt;
  @override
  final DateTime? expiresAt;
  @override
  final String? grantSource;
  @override
  final String? sourceOrderId;
  @override
  final String? spinWheelSessionId;
  @override
  @JsonKey()
  final bool isConsumed;
  @override
  final DateTime? consumedAt;
  @override
  final String? consumedOnOrderId;

  @override
  String toString() {
    return 'FreeDeliveryReward(id: $id, grantedAt: $grantedAt, expiresAt: $expiresAt, grantSource: $grantSource, sourceOrderId: $sourceOrderId, spinWheelSessionId: $spinWheelSessionId, isConsumed: $isConsumed, consumedAt: $consumedAt, consumedOnOrderId: $consumedOnOrderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDeliveryRewardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.grantedAt, grantedAt) ||
                other.grantedAt == grantedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.grantSource, grantSource) ||
                other.grantSource == grantSource) &&
            (identical(other.sourceOrderId, sourceOrderId) ||
                other.sourceOrderId == sourceOrderId) &&
            (identical(other.spinWheelSessionId, spinWheelSessionId) ||
                other.spinWheelSessionId == spinWheelSessionId) &&
            (identical(other.isConsumed, isConsumed) ||
                other.isConsumed == isConsumed) &&
            (identical(other.consumedAt, consumedAt) ||
                other.consumedAt == consumedAt) &&
            (identical(other.consumedOnOrderId, consumedOnOrderId) ||
                other.consumedOnOrderId == consumedOnOrderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    grantedAt,
    expiresAt,
    grantSource,
    sourceOrderId,
    spinWheelSessionId,
    isConsumed,
    consumedAt,
    consumedOnOrderId,
  );

  /// Create a copy of FreeDeliveryReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDeliveryRewardImplCopyWith<_$FreeDeliveryRewardImpl> get copyWith =>
      __$$FreeDeliveryRewardImplCopyWithImpl<_$FreeDeliveryRewardImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDeliveryRewardImplToJson(this);
  }
}

abstract class _FreeDeliveryReward implements FreeDeliveryReward {
  const factory _FreeDeliveryReward({
    required final String id,
    required final DateTime grantedAt,
    final DateTime? expiresAt,
    final String? grantSource,
    final String? sourceOrderId,
    final String? spinWheelSessionId,
    final bool isConsumed,
    final DateTime? consumedAt,
    final String? consumedOnOrderId,
  }) = _$FreeDeliveryRewardImpl;

  factory _FreeDeliveryReward.fromJson(Map<String, dynamic> json) =
      _$FreeDeliveryRewardImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get grantedAt;
  @override
  DateTime? get expiresAt;
  @override
  String? get grantSource;
  @override
  String? get sourceOrderId;
  @override
  String? get spinWheelSessionId;
  @override
  bool get isConsumed;
  @override
  DateTime? get consumedAt;
  @override
  String? get consumedOnOrderId;

  /// Create a copy of FreeDeliveryReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreeDeliveryRewardImplCopyWith<_$FreeDeliveryRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoyaltyTransaction _$LoyaltyTransactionFromJson(Map<String, dynamic> json) {
  return _LoyaltyTransaction.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyTransaction {
  String get id => throw _privateConstructorUsedError;
  LoyaltyTransactionKind get kind => throw _privateConstructorUsedError;
  int get pointsDelta => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get rewardId => throw _privateConstructorUsedError;
  String? get spinWheelSessionId => throw _privateConstructorUsedError;
  String? get freeDeliveryRewardId => throw _privateConstructorUsedError;
  RewardType? get rewardTypeHint => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this LoyaltyTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoyaltyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoyaltyTransactionCopyWith<LoyaltyTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyTransactionCopyWith<$Res> {
  factory $LoyaltyTransactionCopyWith(
    LoyaltyTransaction value,
    $Res Function(LoyaltyTransaction) then,
  ) = _$LoyaltyTransactionCopyWithImpl<$Res, LoyaltyTransaction>;
  @useResult
  $Res call({
    String id,
    LoyaltyTransactionKind kind,
    int pointsDelta,
    String description,
    String? orderId,
    String? rewardId,
    String? spinWheelSessionId,
    String? freeDeliveryRewardId,
    RewardType? rewardTypeHint,
    DateTime createdAt,
  });
}

/// @nodoc
class _$LoyaltyTransactionCopyWithImpl<$Res, $Val extends LoyaltyTransaction>
    implements $LoyaltyTransactionCopyWith<$Res> {
  _$LoyaltyTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoyaltyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? pointsDelta = null,
    Object? description = null,
    Object? orderId = freezed,
    Object? rewardId = freezed,
    Object? spinWheelSessionId = freezed,
    Object? freeDeliveryRewardId = freezed,
    Object? rewardTypeHint = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            kind: null == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as LoyaltyTransactionKind,
            pointsDelta: null == pointsDelta
                ? _value.pointsDelta
                : pointsDelta // ignore: cast_nullable_to_non_nullable
                      as int,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            orderId: freezed == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            rewardId: freezed == rewardId
                ? _value.rewardId
                : rewardId // ignore: cast_nullable_to_non_nullable
                      as String?,
            spinWheelSessionId: freezed == spinWheelSessionId
                ? _value.spinWheelSessionId
                : spinWheelSessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            freeDeliveryRewardId: freezed == freeDeliveryRewardId
                ? _value.freeDeliveryRewardId
                : freeDeliveryRewardId // ignore: cast_nullable_to_non_nullable
                      as String?,
            rewardTypeHint: freezed == rewardTypeHint
                ? _value.rewardTypeHint
                : rewardTypeHint // ignore: cast_nullable_to_non_nullable
                      as RewardType?,
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
abstract class _$$LoyaltyTransactionImplCopyWith<$Res>
    implements $LoyaltyTransactionCopyWith<$Res> {
  factory _$$LoyaltyTransactionImplCopyWith(
    _$LoyaltyTransactionImpl value,
    $Res Function(_$LoyaltyTransactionImpl) then,
  ) = __$$LoyaltyTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    LoyaltyTransactionKind kind,
    int pointsDelta,
    String description,
    String? orderId,
    String? rewardId,
    String? spinWheelSessionId,
    String? freeDeliveryRewardId,
    RewardType? rewardTypeHint,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$LoyaltyTransactionImplCopyWithImpl<$Res>
    extends _$LoyaltyTransactionCopyWithImpl<$Res, _$LoyaltyTransactionImpl>
    implements _$$LoyaltyTransactionImplCopyWith<$Res> {
  __$$LoyaltyTransactionImplCopyWithImpl(
    _$LoyaltyTransactionImpl _value,
    $Res Function(_$LoyaltyTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoyaltyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? pointsDelta = null,
    Object? description = null,
    Object? orderId = freezed,
    Object? rewardId = freezed,
    Object? spinWheelSessionId = freezed,
    Object? freeDeliveryRewardId = freezed,
    Object? rewardTypeHint = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$LoyaltyTransactionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        kind: null == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as LoyaltyTransactionKind,
        pointsDelta: null == pointsDelta
            ? _value.pointsDelta
            : pointsDelta // ignore: cast_nullable_to_non_nullable
                  as int,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        orderId: freezed == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        rewardId: freezed == rewardId
            ? _value.rewardId
            : rewardId // ignore: cast_nullable_to_non_nullable
                  as String?,
        spinWheelSessionId: freezed == spinWheelSessionId
            ? _value.spinWheelSessionId
            : spinWheelSessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        freeDeliveryRewardId: freezed == freeDeliveryRewardId
            ? _value.freeDeliveryRewardId
            : freeDeliveryRewardId // ignore: cast_nullable_to_non_nullable
                  as String?,
        rewardTypeHint: freezed == rewardTypeHint
            ? _value.rewardTypeHint
            : rewardTypeHint // ignore: cast_nullable_to_non_nullable
                  as RewardType?,
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
class _$LoyaltyTransactionImpl implements _LoyaltyTransaction {
  const _$LoyaltyTransactionImpl({
    required this.id,
    this.kind = LoyaltyTransactionKind.unknown,
    required this.pointsDelta,
    required this.description,
    this.orderId,
    this.rewardId,
    this.spinWheelSessionId,
    this.freeDeliveryRewardId,
    this.rewardTypeHint,
    required this.createdAt,
  });

  factory _$LoyaltyTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoyaltyTransactionImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final LoyaltyTransactionKind kind;
  @override
  final int pointsDelta;
  @override
  final String description;
  @override
  final String? orderId;
  @override
  final String? rewardId;
  @override
  final String? spinWheelSessionId;
  @override
  final String? freeDeliveryRewardId;
  @override
  final RewardType? rewardTypeHint;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'LoyaltyTransaction(id: $id, kind: $kind, pointsDelta: $pointsDelta, description: $description, orderId: $orderId, rewardId: $rewardId, spinWheelSessionId: $spinWheelSessionId, freeDeliveryRewardId: $freeDeliveryRewardId, rewardTypeHint: $rewardTypeHint, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.pointsDelta, pointsDelta) ||
                other.pointsDelta == pointsDelta) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.rewardId, rewardId) ||
                other.rewardId == rewardId) &&
            (identical(other.spinWheelSessionId, spinWheelSessionId) ||
                other.spinWheelSessionId == spinWheelSessionId) &&
            (identical(other.freeDeliveryRewardId, freeDeliveryRewardId) ||
                other.freeDeliveryRewardId == freeDeliveryRewardId) &&
            (identical(other.rewardTypeHint, rewardTypeHint) ||
                other.rewardTypeHint == rewardTypeHint) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    kind,
    pointsDelta,
    description,
    orderId,
    rewardId,
    spinWheelSessionId,
    freeDeliveryRewardId,
    rewardTypeHint,
    createdAt,
  );

  /// Create a copy of LoyaltyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyTransactionImplCopyWith<_$LoyaltyTransactionImpl> get copyWith =>
      __$$LoyaltyTransactionImplCopyWithImpl<_$LoyaltyTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyTransactionImplToJson(this);
  }
}

abstract class _LoyaltyTransaction implements LoyaltyTransaction {
  const factory _LoyaltyTransaction({
    required final String id,
    final LoyaltyTransactionKind kind,
    required final int pointsDelta,
    required final String description,
    final String? orderId,
    final String? rewardId,
    final String? spinWheelSessionId,
    final String? freeDeliveryRewardId,
    final RewardType? rewardTypeHint,
    required final DateTime createdAt,
  }) = _$LoyaltyTransactionImpl;

  factory _LoyaltyTransaction.fromJson(Map<String, dynamic> json) =
      _$LoyaltyTransactionImpl.fromJson;

  @override
  String get id;
  @override
  LoyaltyTransactionKind get kind;
  @override
  int get pointsDelta;
  @override
  String get description;
  @override
  String? get orderId;
  @override
  String? get rewardId;
  @override
  String? get spinWheelSessionId;
  @override
  String? get freeDeliveryRewardId;
  @override
  RewardType? get rewardTypeHint;
  @override
  DateTime get createdAt;

  /// Create a copy of LoyaltyTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoyaltyTransactionImplCopyWith<_$LoyaltyTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpinWheelResult _$SpinWheelResultFromJson(Map<String, dynamic> json) {
  return _SpinWheelResult.fromJson(json);
}

/// @nodoc
mixin _$SpinWheelResult {
  String get prizeId => throw _privateConstructorUsedError;
  String get prizeLabel => throw _privateConstructorUsedError;
  RewardType? get rewardType => throw _privateConstructorUsedError;
  int? get pointsWon => throw _privateConstructorUsedError;
  String? get loyaltyTransactionId => throw _privateConstructorUsedError;
  FreeDeliveryReward? get freeDeliveryReward =>
      throw _privateConstructorUsedError;

  /// Serializes this SpinWheelResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpinWheelResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpinWheelResultCopyWith<SpinWheelResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpinWheelResultCopyWith<$Res> {
  factory $SpinWheelResultCopyWith(
    SpinWheelResult value,
    $Res Function(SpinWheelResult) then,
  ) = _$SpinWheelResultCopyWithImpl<$Res, SpinWheelResult>;
  @useResult
  $Res call({
    String prizeId,
    String prizeLabel,
    RewardType? rewardType,
    int? pointsWon,
    String? loyaltyTransactionId,
    FreeDeliveryReward? freeDeliveryReward,
  });

  $FreeDeliveryRewardCopyWith<$Res>? get freeDeliveryReward;
}

/// @nodoc
class _$SpinWheelResultCopyWithImpl<$Res, $Val extends SpinWheelResult>
    implements $SpinWheelResultCopyWith<$Res> {
  _$SpinWheelResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpinWheelResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prizeId = null,
    Object? prizeLabel = null,
    Object? rewardType = freezed,
    Object? pointsWon = freezed,
    Object? loyaltyTransactionId = freezed,
    Object? freeDeliveryReward = freezed,
  }) {
    return _then(
      _value.copyWith(
            prizeId: null == prizeId
                ? _value.prizeId
                : prizeId // ignore: cast_nullable_to_non_nullable
                      as String,
            prizeLabel: null == prizeLabel
                ? _value.prizeLabel
                : prizeLabel // ignore: cast_nullable_to_non_nullable
                      as String,
            rewardType: freezed == rewardType
                ? _value.rewardType
                : rewardType // ignore: cast_nullable_to_non_nullable
                      as RewardType?,
            pointsWon: freezed == pointsWon
                ? _value.pointsWon
                : pointsWon // ignore: cast_nullable_to_non_nullable
                      as int?,
            loyaltyTransactionId: freezed == loyaltyTransactionId
                ? _value.loyaltyTransactionId
                : loyaltyTransactionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            freeDeliveryReward: freezed == freeDeliveryReward
                ? _value.freeDeliveryReward
                : freeDeliveryReward // ignore: cast_nullable_to_non_nullable
                      as FreeDeliveryReward?,
          )
          as $Val,
    );
  }

  /// Create a copy of SpinWheelResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeDeliveryRewardCopyWith<$Res>? get freeDeliveryReward {
    if (_value.freeDeliveryReward == null) {
      return null;
    }

    return $FreeDeliveryRewardCopyWith<$Res>(_value.freeDeliveryReward!, (
      value,
    ) {
      return _then(_value.copyWith(freeDeliveryReward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpinWheelResultImplCopyWith<$Res>
    implements $SpinWheelResultCopyWith<$Res> {
  factory _$$SpinWheelResultImplCopyWith(
    _$SpinWheelResultImpl value,
    $Res Function(_$SpinWheelResultImpl) then,
  ) = __$$SpinWheelResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String prizeId,
    String prizeLabel,
    RewardType? rewardType,
    int? pointsWon,
    String? loyaltyTransactionId,
    FreeDeliveryReward? freeDeliveryReward,
  });

  @override
  $FreeDeliveryRewardCopyWith<$Res>? get freeDeliveryReward;
}

/// @nodoc
class __$$SpinWheelResultImplCopyWithImpl<$Res>
    extends _$SpinWheelResultCopyWithImpl<$Res, _$SpinWheelResultImpl>
    implements _$$SpinWheelResultImplCopyWith<$Res> {
  __$$SpinWheelResultImplCopyWithImpl(
    _$SpinWheelResultImpl _value,
    $Res Function(_$SpinWheelResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpinWheelResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prizeId = null,
    Object? prizeLabel = null,
    Object? rewardType = freezed,
    Object? pointsWon = freezed,
    Object? loyaltyTransactionId = freezed,
    Object? freeDeliveryReward = freezed,
  }) {
    return _then(
      _$SpinWheelResultImpl(
        prizeId: null == prizeId
            ? _value.prizeId
            : prizeId // ignore: cast_nullable_to_non_nullable
                  as String,
        prizeLabel: null == prizeLabel
            ? _value.prizeLabel
            : prizeLabel // ignore: cast_nullable_to_non_nullable
                  as String,
        rewardType: freezed == rewardType
            ? _value.rewardType
            : rewardType // ignore: cast_nullable_to_non_nullable
                  as RewardType?,
        pointsWon: freezed == pointsWon
            ? _value.pointsWon
            : pointsWon // ignore: cast_nullable_to_non_nullable
                  as int?,
        loyaltyTransactionId: freezed == loyaltyTransactionId
            ? _value.loyaltyTransactionId
            : loyaltyTransactionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        freeDeliveryReward: freezed == freeDeliveryReward
            ? _value.freeDeliveryReward
            : freeDeliveryReward // ignore: cast_nullable_to_non_nullable
                  as FreeDeliveryReward?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpinWheelResultImpl implements _SpinWheelResult {
  const _$SpinWheelResultImpl({
    required this.prizeId,
    required this.prizeLabel,
    this.rewardType,
    this.pointsWon,
    this.loyaltyTransactionId,
    this.freeDeliveryReward,
  });

  factory _$SpinWheelResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpinWheelResultImplFromJson(json);

  @override
  final String prizeId;
  @override
  final String prizeLabel;
  @override
  final RewardType? rewardType;
  @override
  final int? pointsWon;
  @override
  final String? loyaltyTransactionId;
  @override
  final FreeDeliveryReward? freeDeliveryReward;

  @override
  String toString() {
    return 'SpinWheelResult(prizeId: $prizeId, prizeLabel: $prizeLabel, rewardType: $rewardType, pointsWon: $pointsWon, loyaltyTransactionId: $loyaltyTransactionId, freeDeliveryReward: $freeDeliveryReward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpinWheelResultImpl &&
            (identical(other.prizeId, prizeId) || other.prizeId == prizeId) &&
            (identical(other.prizeLabel, prizeLabel) ||
                other.prizeLabel == prizeLabel) &&
            (identical(other.rewardType, rewardType) ||
                other.rewardType == rewardType) &&
            (identical(other.pointsWon, pointsWon) ||
                other.pointsWon == pointsWon) &&
            (identical(other.loyaltyTransactionId, loyaltyTransactionId) ||
                other.loyaltyTransactionId == loyaltyTransactionId) &&
            (identical(other.freeDeliveryReward, freeDeliveryReward) ||
                other.freeDeliveryReward == freeDeliveryReward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    prizeId,
    prizeLabel,
    rewardType,
    pointsWon,
    loyaltyTransactionId,
    freeDeliveryReward,
  );

  /// Create a copy of SpinWheelResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpinWheelResultImplCopyWith<_$SpinWheelResultImpl> get copyWith =>
      __$$SpinWheelResultImplCopyWithImpl<_$SpinWheelResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpinWheelResultImplToJson(this);
  }
}

abstract class _SpinWheelResult implements SpinWheelResult {
  const factory _SpinWheelResult({
    required final String prizeId,
    required final String prizeLabel,
    final RewardType? rewardType,
    final int? pointsWon,
    final String? loyaltyTransactionId,
    final FreeDeliveryReward? freeDeliveryReward,
  }) = _$SpinWheelResultImpl;

  factory _SpinWheelResult.fromJson(Map<String, dynamic> json) =
      _$SpinWheelResultImpl.fromJson;

  @override
  String get prizeId;
  @override
  String get prizeLabel;
  @override
  RewardType? get rewardType;
  @override
  int? get pointsWon;
  @override
  String? get loyaltyTransactionId;
  @override
  FreeDeliveryReward? get freeDeliveryReward;

  /// Create a copy of SpinWheelResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpinWheelResultImplCopyWith<_$SpinWheelResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
