/// HTTP header keys and shared API constants.
abstract final class ApiConstants {
  static const contentTypeJson = 'application/json';
  static const acceptJson = 'application/json';
  static const authorizationHeader = 'Authorization';
  static const bearerPrefix = 'Bearer';
  static const correlationIdHeader = 'X-Correlation-Id';
  static const clientPlatformHeader = 'X-Client-Platform';
  static const clientVersionHeader = 'X-Client-Version';
  static const clientPlatformValue = 'flutter-customer';
}
