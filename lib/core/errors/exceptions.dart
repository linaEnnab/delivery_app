/// Data-layer exceptions mapped from Dio / local storage failures.
sealed class AppException implements Exception {
  const AppException(this.message, {this.code});

  final String message;
  final String? code;
}

final class ServerException extends AppException {
  const ServerException(super.message, {super.code, this.statusCode});

  final int? statusCode;
}

final class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection']);
}

final class CacheException extends AppException {
  const CacheException([super.message = 'Local cache error']);
}

final class AuthException extends AppException {
  const AuthException([super.message = 'Authentication failed']);
}

final class ValidationException extends AppException {
  const ValidationException(super.message, {this.fieldErrors});

  final Map<String, List<String>>? fieldErrors;
}

final class NotFoundException extends AppException {
  const NotFoundException([super.message = 'Resource not found']);
}

final class BusinessRuleException extends AppException {
  const BusinessRuleException(super.message);
}

/// Use when a Riverpod [FutureProvider] should surface [Failure.message] in the
/// UI without an `Exception: ` prefix from [Exception.toString].
final class UserMessageException implements Exception {
  const UserMessageException(this.message);

  final String message;

  @override
  String toString() => message;
}
