import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:dio/dio.dart';

Failure mapDioToFailure(Object error) {
  if (error is DioException) {
    final inner = error.error;
    if (inner is AppException) {
      return switch (inner) {
        NetworkException(:final message) => Failure.network(message: message),
        AuthException(:final message) => Failure.auth(message: message),
        NotFoundException(:final message) => Failure.notFound(message: message),
        ValidationException(:final message, :final fieldErrors) =>
          Failure.validation(message: message, fieldErrors: fieldErrors),
        BusinessRuleException(:final message) =>
          Failure.businessRule(message: message),
        ServerException(:final message, :final code, :final statusCode) =>
          Failure.server(
            message: message,
            code: code,
            statusCode: statusCode,
          ),
        _ => Failure.unexpected(message: inner.message),
      };
    }
    // e.g. [DioException] from data sources after `validateStatus` accepts 4xx
    if (error.type == DioExceptionType.badResponse) {
      return _failureFromBadResponse(error);
    }
    return Failure.unexpected(
      message: error.message?.trim().isNotEmpty == true
          ? error.message!
          : 'Could not complete request',
    );
  }
  return Failure.unexpected(message: error.toString());
}

String? _messageFromResponseBody(dynamic data) {
  if (data is Map<String, dynamic>) {
    return data['message'] as String? ?? data['title'] as String?;
  }
  return null;
}

Map<String, List<String>>? _fieldErrorsFromBody(dynamic data) {
  if (data is! Map<String, dynamic>) return null;
  final errors = data['errors'];
  if (errors is! Map<String, dynamic>) return null;

  return errors.map(
    (key, value) => MapEntry(
      key,
      (value as List<dynamic>).map((e) => e.toString()).toList(),
    ),
  );
}

Failure _failureFromBadResponse(DioException err) {
  final status = err.response?.statusCode;
  final extracted = _messageFromResponseBody(err.response?.data)?.trim();
  final message = (extracted != null && extracted.isNotEmpty)
      ? extracted
      : 'Request was not successful';

  if (status == null) {
    return Failure.server(message: message, statusCode: null);
  }

  return switch (status) {
    401 => Failure.auth(message: message),
    404 => Failure.notFound(message: message),
    422 => Failure.validation(
        message: message,
        fieldErrors: _fieldErrorsFromBody(err.response?.data),
      ),
    >= 400 && < 500 => Failure.businessRule(message: message),
    _ => Failure.server(message: message, statusCode: status),
  };
}
