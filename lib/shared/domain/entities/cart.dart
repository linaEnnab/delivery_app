import 'package:delivery_app/shared/domain/entities/order_pricing.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  const factory Cart({
    required String id,
    required String restaurantId,
    required List<CartItem> items,
    OrderPricing? pricingPreview,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required String productId,
    required String productName,
    required int quantity,
    required Money unitPrice,
    required Money lineTotal,
    @Default([]) List<SelectedProductOption> selectedOptions,
    String? specialInstructions,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
class SelectedProductOption with _$SelectedProductOption {
  const factory SelectedProductOption({
    required String groupId,
    required String optionId,
    required String optionName,
    required Money additionalPrice,
  }) = _SelectedProductOption;

  factory SelectedProductOption.fromJson(Map<String, dynamic> json) =>
      _$SelectedProductOptionFromJson(json);
}
