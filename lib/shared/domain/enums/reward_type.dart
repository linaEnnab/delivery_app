import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum RewardType {
  freeDelivery,
  discount,
  coupon,
  spinWheel,
  restaurantSponsored,
}
