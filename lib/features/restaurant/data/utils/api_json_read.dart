/// Reads ASP.NET Core JSON (camelCase by default) with snake_case fallbacks.
dynamic readProp(Map<String, dynamic> json, String camel, String snake) {
  return json[camel] ?? json[snake];
}

bool _isOpenApiPlaceholderString(String raw) {
  final t = raw.trim().toLowerCase();
  return t == 'string';
}

/// Treats common Swagger/OpenAPI example literals as absent.
String scrubOpenApiPlaceholder(String value, {String ifPlaceholder = ''}) {
  return _isOpenApiPlaceholderString(value) ? ifPlaceholder : value;
}

String readString(
  Map<String, dynamic> json,
  String camel,
  String snake, {
  String fallback = '',
  bool stripOpenApiPlaceholders = false,
}) {
  final v = readProp(json, camel, snake);
  if (v == null) return fallback;
  final s = v.toString();
  if (stripOpenApiPlaceholders && _isOpenApiPlaceholderString(s)) {
    return fallback;
  }
  return s;
}

double readDouble(
  Map<String, dynamic> json,
  String camel,
  String snake, {
  double fallback = 0,
}) {
  final v = readProp(json, camel, snake);
  if (v == null) return fallback;
  if (v is num) return v.toDouble();
  return double.tryParse(v.toString()) ?? fallback;
}

int readInt(
  Map<String, dynamic> json,
  String camel,
  String snake, {
  int fallback = 0,
}) {
  final v = readProp(json, camel, snake);
  if (v == null) return fallback;
  if (v is num) return v.round();
  return int.tryParse(v.toString()) ?? fallback;
}

bool readBool(
  Map<String, dynamic> json,
  String camel,
  String snake, {
  bool fallback = false,
}) {
  final v = readProp(json, camel, snake);
  if (v == null) return fallback;
  if (v is bool) return v;
  return v == 1 || v == '1' || v == 'true';
}

Map<String, dynamic>? readMap(
  Map<String, dynamic> json,
  String camel,
  String snake,
) {
  final v = readProp(json, camel, snake);
  if (v is Map<String, dynamic>) return v;
  return null;
}

List<dynamic> readList(
  Map<String, dynamic> json,
  String camel,
  String snake,
) {
  final v = readProp(json, camel, snake);
  if (v is List<dynamic>) return v;
  return const [];
}

/// Unwraps a JSON array or common envelope shapes (`items`, `products`, …).
List<dynamic> unwrapTopLevelJsonList(dynamic data) {
  if (data is List<dynamic>) return data;
  if (data is Map<String, dynamic>) {
    for (final key in <String>[
      'items',
      'data',
      'value',
      'results',
      'products',
      'menuItems',
      'menu',
      'content',
    ]) {
      final inner = data[key];
      if (inner is List<dynamic>) return inner;
    }
  }
  throw const FormatException('Expected a JSON array or wrapped list');
}
