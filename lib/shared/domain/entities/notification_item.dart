import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_item.freezed.dart';
part 'notification_item.g.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum NotificationType {
  orderUpdate,
  promotion,
  loyalty,
  system,
}

@freezed
class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    required String id,
    required NotificationType type,
    required String title,
    required String body,
    required DateTime createdAt,
    @Default(false) bool isRead,
    String? deepLinkPath,
    String? referenceId,
  }) = _NotificationItem;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}
