// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoyaltyBalanceImpl _$$LoyaltyBalanceImplFromJson(Map<String, dynamic> json) =>
    _$LoyaltyBalanceImpl(
      points: (json['points'] as num).toInt(),
      lifetimeEarned: (json['lifetime_earned'] as num).toInt(),
      lifetimeRedeemed: (json['lifetime_redeemed'] as num).toInt(),
      pendingPoints: (json['pending_points'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$LoyaltyBalanceImplToJson(
  _$LoyaltyBalanceImpl instance,
) => <String, dynamic>{
  'points': instance.points,
  'lifetime_earned': instance.lifetimeEarned,
  'lifetime_redeemed': instance.lifetimeRedeemed,
  'pending_points': instance.pendingPoints,
};

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  type: $enumDecode(_$RewardTypeEnumMap, json['type']),
  pointsCost: (json['points_cost'] as num).toInt(),
  discountValue: json['discount_value'] == null
      ? null
      : Money.fromJson(json['discount_value'] as Map<String, dynamic>),
  discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
  couponCode: json['coupon_code'] as String?,
  restaurantId: json['restaurant_id'] as String?,
  restaurantName: json['restaurant_name'] as String?,
  expiresAt: json['expires_at'] == null
      ? null
      : DateTime.parse(json['expires_at'] as String),
  isAvailable: json['is_available'] as bool? ?? true,
);

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$RewardTypeEnumMap[instance.type]!,
      'points_cost': instance.pointsCost,
      if (instance.discountValue?.toJson() case final value?)
        'discount_value': value,
      if (instance.discountPercentage case final value?)
        'discount_percentage': value,
      if (instance.couponCode case final value?) 'coupon_code': value,
      if (instance.restaurantId case final value?) 'restaurant_id': value,
      if (instance.restaurantName case final value?) 'restaurant_name': value,
      if (instance.expiresAt?.toIso8601String() case final value?)
        'expires_at': value,
      'is_available': instance.isAvailable,
    };

const _$RewardTypeEnumMap = {
  RewardType.freeDelivery: 'free_delivery',
  RewardType.discount: 'discount',
  RewardType.coupon: 'coupon',
  RewardType.spinWheel: 'spin_wheel',
  RewardType.restaurantSponsored: 'restaurant_sponsored',
};

_$FreeDeliveryRewardImpl _$$FreeDeliveryRewardImplFromJson(
  Map<String, dynamic> json,
) => _$FreeDeliveryRewardImpl(
  id: json['id'] as String,
  grantedAt: DateTime.parse(json['granted_at'] as String),
  expiresAt: json['expires_at'] == null
      ? null
      : DateTime.parse(json['expires_at'] as String),
  grantSource: json['grant_source'] as String?,
  sourceOrderId: json['source_order_id'] as String?,
  spinWheelSessionId: json['spin_wheel_session_id'] as String?,
  isConsumed: json['is_consumed'] as bool? ?? false,
  consumedAt: json['consumed_at'] == null
      ? null
      : DateTime.parse(json['consumed_at'] as String),
  consumedOnOrderId: json['consumed_on_order_id'] as String?,
);

Map<String, dynamic> _$$FreeDeliveryRewardImplToJson(
  _$FreeDeliveryRewardImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'granted_at': instance.grantedAt.toIso8601String(),
  if (instance.expiresAt?.toIso8601String() case final value?)
    'expires_at': value,
  if (instance.grantSource case final value?) 'grant_source': value,
  if (instance.sourceOrderId case final value?) 'source_order_id': value,
  if (instance.spinWheelSessionId case final value?)
    'spin_wheel_session_id': value,
  'is_consumed': instance.isConsumed,
  if (instance.consumedAt?.toIso8601String() case final value?)
    'consumed_at': value,
  if (instance.consumedOnOrderId case final value?)
    'consumed_on_order_id': value,
};

_$LoyaltyTransactionImpl _$$LoyaltyTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$LoyaltyTransactionImpl(
  id: json['id'] as String,
  kind:
      $enumDecodeNullable(_$LoyaltyTransactionKindEnumMap, json['kind']) ??
      LoyaltyTransactionKind.unknown,
  pointsDelta: (json['points_delta'] as num).toInt(),
  description: json['description'] as String,
  orderId: json['order_id'] as String?,
  rewardId: json['reward_id'] as String?,
  spinWheelSessionId: json['spin_wheel_session_id'] as String?,
  freeDeliveryRewardId: json['free_delivery_reward_id'] as String?,
  rewardTypeHint: $enumDecodeNullable(
    _$RewardTypeEnumMap,
    json['reward_type_hint'],
  ),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$$LoyaltyTransactionImplToJson(
  _$LoyaltyTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'kind': _$LoyaltyTransactionKindEnumMap[instance.kind]!,
  'points_delta': instance.pointsDelta,
  'description': instance.description,
  if (instance.orderId case final value?) 'order_id': value,
  if (instance.rewardId case final value?) 'reward_id': value,
  if (instance.spinWheelSessionId case final value?)
    'spin_wheel_session_id': value,
  if (instance.freeDeliveryRewardId case final value?)
    'free_delivery_reward_id': value,
  if (_$RewardTypeEnumMap[instance.rewardTypeHint] case final value?)
    'reward_type_hint': value,
  'created_at': instance.createdAt.toIso8601String(),
};

const _$LoyaltyTransactionKindEnumMap = {
  LoyaltyTransactionKind.unknown: 'unknown',
  LoyaltyTransactionKind.orderEarned: 'order_earned',
  LoyaltyTransactionKind.rewardRedemption: 'reward_redemption',
  LoyaltyTransactionKind.adjustment: 'adjustment',
  LoyaltyTransactionKind.spinWheel: 'spin_wheel',
  LoyaltyTransactionKind.freeDeliveryGranted: 'free_delivery_granted',
  LoyaltyTransactionKind.freeDeliveryConsumed: 'free_delivery_consumed',
  LoyaltyTransactionKind.expiry: 'expiry',
};

_$SpinWheelResultImpl _$$SpinWheelResultImplFromJson(
  Map<String, dynamic> json,
) => _$SpinWheelResultImpl(
  prizeId: json['prize_id'] as String,
  prizeLabel: json['prize_label'] as String,
  rewardType: $enumDecodeNullable(_$RewardTypeEnumMap, json['reward_type']),
  pointsWon: (json['points_won'] as num?)?.toInt(),
  loyaltyTransactionId: json['loyalty_transaction_id'] as String?,
  freeDeliveryReward: json['free_delivery_reward'] == null
      ? null
      : FreeDeliveryReward.fromJson(
          json['free_delivery_reward'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$SpinWheelResultImplToJson(
  _$SpinWheelResultImpl instance,
) => <String, dynamic>{
  'prize_id': instance.prizeId,
  'prize_label': instance.prizeLabel,
  if (_$RewardTypeEnumMap[instance.rewardType] case final value?)
    'reward_type': value,
  if (instance.pointsWon case final value?) 'points_won': value,
  if (instance.loyaltyTransactionId case final value?)
    'loyalty_transaction_id': value,
  if (instance.freeDeliveryReward?.toJson() case final value?)
    'free_delivery_reward': value,
};
