import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:dio/dio.dart';

/// Maps data-layer exceptions to domain failures.
Failure mapExceptionToFailure(Object error) {
  if (error is Failure) return error;

  return switch (error) {
    ServerException(:final message, :final code, :final statusCode) =>
      Failure.server(message: message, code: code, statusCode: statusCode),
    NetworkException(:final message) => Failure.network(message: message),
    CacheException(:final message) => Failure.cache(message: message),
    AuthException(:final message) => Failure.auth(message: message),
    ValidationException(:final message, :final fieldErrors) =>
      Failure.validation(message: message, fieldErrors: fieldErrors),
    NotFoundException(:final message) => Failure.notFound(message: message),
    BusinessRuleException(:final message) =>
      Failure.businessRule(message: message),
    DioException(type: DioExceptionType.connectionTimeout) ||
    DioException(type: DioExceptionType.receiveTimeout) ||
    DioException(type: DioExceptionType.sendTimeout) =>
      const Failure.network(message: 'Request timed out'),
    DioException(type: DioExceptionType.connectionError) =>
      const Failure.network(),
    DioException(response: final response?) =>
      Failure.server(
        message: _extractMessage(response.data) ?? 'Server error',
        statusCode: response.statusCode,
      ),
    _ => Failure.unexpected(message: error.toString()),
  };
}

String? _extractMessage(dynamic data) {
  if (data is Map<String, dynamic>) {
    return data['message'] as String? ?? data['title'] as String?;
  }
  return null;
}
