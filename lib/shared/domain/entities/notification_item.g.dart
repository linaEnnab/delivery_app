// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationItemImpl _$$NotificationItemImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationItemImpl(
  id: json['id'] as String,
  type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
  title: json['title'] as String,
  body: json['body'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  isRead: json['is_read'] as bool? ?? false,
  deepLinkPath: json['deep_link_path'] as String?,
  referenceId: json['reference_id'] as String?,
);

Map<String, dynamic> _$$NotificationItemImplToJson(
  _$NotificationItemImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$NotificationTypeEnumMap[instance.type]!,
  'title': instance.title,
  'body': instance.body,
  'created_at': instance.createdAt.toIso8601String(),
  'is_read': instance.isRead,
  if (instance.deepLinkPath case final value?) 'deep_link_path': value,
  if (instance.referenceId case final value?) 'reference_id': value,
};

const _$NotificationTypeEnumMap = {
  NotificationType.orderUpdate: 'order_update',
  NotificationType.promotion: 'promotion',
  NotificationType.loyalty: 'loyalty',
  NotificationType.system: 'system',
};
