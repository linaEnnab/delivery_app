import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';
import 'package:delivery_app/features/auth/data/utils/jwt_utils.dart';
import 'package:delivery_app/features/auth/domain/entities/auth_tokens.dart';

/// Parses `AuthenticationController` login/register JSON (`userId`, `email`,
/// `accessToken`). Delivery.Api does not return a refresh token today.
final class AuthApiDto {
  AuthApiDto._(this._json);

  final Map<String, dynamic> _json;

  factory AuthApiDto.fromDynamic(dynamic data) {
    if (data is Map<String, dynamic>) {
      return AuthApiDto._(data);
    }
    throw const FormatException('Auth response JSON must be an object');
  }

  AuthTokens toDomain() {
    final accessToken = readString(_json, 'accessToken', 'access_token');
    if (accessToken.isEmpty) {
      throw const FormatException('Auth response missing accessToken');
    }

    final expiresAt = expiryFromAccessToken(accessToken) ??
        DateTime.now().add(const Duration(hours: 12));

    return AuthTokens(
      accessToken: accessToken,
      refreshToken: readString(_json, 'refreshToken', 'refresh_token'),
      expiresAt: expiresAt,
    );
  }
}
