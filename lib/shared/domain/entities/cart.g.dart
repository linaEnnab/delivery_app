// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
  id: json['id'] as String,
  restaurantId: json['restaurant_id'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  pricingPreview: json['pricing_preview'] == null
      ? null
      : OrderPricing.fromJson(json['pricing_preview'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant_id': instance.restaurantId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      if (instance.pricingPreview?.toJson() case final value?)
        'pricing_preview': value,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: Money.fromJson(json['unit_price'] as Map<String, dynamic>),
      lineTotal: Money.fromJson(json['line_total'] as Map<String, dynamic>),
      imageUrl: json['image_url'] as String?,
      selectedOptions:
          (json['selected_options'] as List<dynamic>?)
              ?.map(
                (e) =>
                    SelectedProductOption.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      specialInstructions: json['special_instructions'] as String?,
    );

Map<String, dynamic> _$$CartItemImplToJson(
  _$CartItemImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'product_name': instance.productName,
  'quantity': instance.quantity,
  'unit_price': instance.unitPrice.toJson(),
  'line_total': instance.lineTotal.toJson(),
  if (instance.imageUrl case final value?) 'image_url': value,
  'selected_options': instance.selectedOptions.map((e) => e.toJson()).toList(),
  if (instance.specialInstructions case final value?)
    'special_instructions': value,
};

_$SelectedProductOptionImpl _$$SelectedProductOptionImplFromJson(
  Map<String, dynamic> json,
) => _$SelectedProductOptionImpl(
  groupId: json['group_id'] as String,
  optionId: json['option_id'] as String,
  optionName: json['option_name'] as String,
  additionalPrice: Money.fromJson(
    json['additional_price'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$SelectedProductOptionImplToJson(
  _$SelectedProductOptionImpl instance,
) => <String, dynamic>{
  'group_id': instance.groupId,
  'option_id': instance.optionId,
  'option_name': instance.optionName,
  'additional_price': instance.additionalPrice.toJson(),
};
