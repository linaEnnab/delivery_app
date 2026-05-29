import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum DiscountType {
  percentage,
  fixedAmount,
  freeDelivery,
  buyOneGetOne,
}
