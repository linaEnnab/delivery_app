import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedResult<T> with _$PaginatedResult<T> {
  const factory PaginatedResult({
    required List<T> items,
    required int page,
    required int pageSize,
    required int totalCount,
    required bool hasNextPage,
  }) = _PaginatedResult<T>;

  factory PaginatedResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResultFromJson(json, fromJsonT);
}
