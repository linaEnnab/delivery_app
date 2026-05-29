// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionImpl _$$PromotionImplFromJson(Map<String, dynamic> json) =>
    _$PromotionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      imageUrl: json['image_url'] as String?,
      deepLinkRoute: json['deep_link_route'] as String?,
      restaurantId: json['restaurant_id'] as String?,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validUntil: json['valid_until'] == null
          ? null
          : DateTime.parse(json['valid_until'] as String),
      isPlatformWide: json['is_platform_wide'] as bool? ?? false,
    );

Map<String, dynamic> _$$PromotionImplToJson(_$PromotionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.subtitle case final value?) 'subtitle': value,
      if (instance.imageUrl case final value?) 'image_url': value,
      if (instance.deepLinkRoute case final value?) 'deep_link_route': value,
      if (instance.restaurantId case final value?) 'restaurant_id': value,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.validUntil?.toIso8601String() case final value?)
        'valid_until': value,
      'is_platform_wide': instance.isPlatformWide,
    };
