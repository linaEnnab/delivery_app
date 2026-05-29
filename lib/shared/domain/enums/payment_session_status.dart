import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum PaymentSessionStatus {
  pending,
  requiresAction,
  processing,
  succeeded,
  failed,
  cancelled,
}
