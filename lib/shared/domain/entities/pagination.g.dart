// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedResultImpl<T> _$$PaginatedResultImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$PaginatedResultImpl<T>(
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  totalCount: (json['total_count'] as num).toInt(),
  hasNextPage: json['has_next_page'] as bool,
);

Map<String, dynamic> _$$PaginatedResultImplToJson<T>(
  _$PaginatedResultImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'page': instance.page,
  'page_size': instance.pageSize,
  'total_count': instance.totalCount,
  'has_next_page': instance.hasNextPage,
};
