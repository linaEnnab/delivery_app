import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

/// Normalizes Dio errors into [AppException] for repository mapping.
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = switch (err.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.sendTimeout =>
        const NetworkException('Request timed out'),
      DioExceptionType.connectionError => const NetworkException(),
      DioExceptionType.badResponse => _mapBadResponse(err),
      DioExceptionType.cancel =>
        const ServerException('Request cancelled', code: 'cancelled'),
      _ => ServerException(err.message ?? 'Unknown error'),
    };

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: exception,
        type: err.type,
        response: err.response,
      ),
    );
  }

  AppException _mapBadResponse(DioException err) {
    final status = err.response?.statusCode;
    final message = _messageFromResponse(err.response?.data) ?? 'Server error';

    if (status == null) {
      return ServerException(message, statusCode: status);
    }

    return switch (status) {
      401 => AuthException(message),
      404 => NotFoundException(message),
      422 => ValidationException(
          message,
          fieldErrors: _fieldErrors(err.response?.data),
        ),
      >= 400 && < 500 => BusinessRuleException(message),
      _ => ServerException(message, statusCode: status),
    };
  }

  String? _messageFromResponse(dynamic data) {
    if (data is Map<String, dynamic>) {
      return data['message'] as String? ?? data['title'] as String?;
    }
    return null;
  }

  Map<String, List<String>>? _fieldErrors(dynamic data) {
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
}
