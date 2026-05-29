import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Domain-layer failures consumed by presentation via [Result].
@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    String? code,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.network({
    @Default('No internet connection') String message,
  }) = NetworkFailure;

  const factory Failure.cache({
    @Default('Local storage error') String message,
  }) = CacheFailure;

  const factory Failure.auth({
    @Default('Authentication required') String message,
  }) = AuthFailure;

  const factory Failure.validation({
    required String message,
    Map<String, List<String>>? fieldErrors,
  }) = ValidationFailure;

  const factory Failure.notFound({
    @Default('Resource not found') String message,
  }) = NotFoundFailure;

  const factory Failure.businessRule({
    required String message,
  }) = BusinessRuleFailure;

  const factory Failure.unexpected({
    @Default('Something went wrong') String message,
  }) = UnexpectedFailure;
}
