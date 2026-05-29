import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String restaurantId,
    required String name,
    required String description,
    required Money price,
    String? imageUrl,
    @Default([]) List<String> categoryIds,
    @Default(true) bool isAvailable,
    @Default([]) List<ProductOptionGroup> optionGroups,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductOptionGroup with _$ProductOptionGroup {
  const factory ProductOptionGroup({
    required String id,
    required String name,
    required int minSelection,
    required int maxSelection,
    @Default([]) List<ProductOption> options,
  }) = _ProductOptionGroup;

  factory ProductOptionGroup.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionGroupFromJson(json);
}

@freezed
class ProductOption with _$ProductOption {
  const factory ProductOption({
    required String id,
    required String name,
    @Default(Money.zero) Money additionalPrice,
    @Default(true) bool isAvailable,
  }) = _ProductOption;

  factory ProductOption.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionFromJson(json);
}
