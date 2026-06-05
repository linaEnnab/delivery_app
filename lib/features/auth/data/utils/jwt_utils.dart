import 'dart:convert';

/// Reads the `exp` claim from a JWT access token (seconds since epoch).
DateTime? expiryFromAccessToken(String token) {
  final parts = token.split('.');
  if (parts.length < 2) return null;

  try {
    final normalized = base64Url.normalize(parts[1]);
    final payload = jsonDecode(utf8.decode(base64Url.decode(normalized)));
    if (payload is! Map<String, dynamic>) return null;

    final exp = payload['exp'];
    if (exp is int) {
      return DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true).toLocal();
    }
    if (exp is num) {
      return DateTime.fromMillisecondsSinceEpoch(exp.toInt() * 1000, isUtc: true)
          .toLocal();
    }
  } on Object {
    return null;
  }
  return null;
}
