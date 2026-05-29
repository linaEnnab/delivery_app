// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      restaurantId: json['restaurant_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: Money.fromJson(json['price'] as Map<String, dynamic>),
      imageUrl: json['image_url'] as String?,
      categoryIds:
          (json['category_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isAvailable: json['is_available'] as bool? ?? true,
      optionGroups:
          (json['option_groups'] as List<dynamic>?)
              ?.map(
                (e) => ProductOptionGroup.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant_id': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price.toJson(),
      if (instance.imageUrl case final value?) 'image_url': value,
      'category_ids': instance.categoryIds,
      'is_available': instance.isAvailable,
      'option_groups': instance.optionGroups.map((e) => e.toJson()).toList(),
    };

_$ProductOptionGroupImpl _$$ProductOptionGroupImplFromJson(
  Map<String, dynamic> json,
) => _$ProductOptionGroupImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  minSelection: (json['min_selection'] as num).toInt(),
  maxSelection: (json['max_selection'] as num).toInt(),
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => ProductOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductOptionGroupImplToJson(
  _$ProductOptionGroupImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'min_selection': instance.minSelection,
  'max_selection': instance.maxSelection,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_$ProductOptionImpl _$$ProductOptionImplFromJson(Map<String, dynamic> json) =>
    _$ProductOptionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      additionalPrice: json['additional_price'] == null
          ? Money.zero
          : Money.fromJson(json['additional_price'] as Map<String, dynamic>),
      isAvailable: json['is_available'] as bool? ?? true,
    );

Map<String, dynamic> _$$ProductOptionImplToJson(_$ProductOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additional_price': instance.additionalPrice.toJson(),
      'is_available': instance.isAvailable,
    };
