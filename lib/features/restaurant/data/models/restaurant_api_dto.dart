import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';

/// Parses [RestaurantListItemDto] and [RestaurantDetailDto] JSON from
/// `GET /api/restaurant` and `GET /api/restaurant/{id}` (ASP.NET camelCase).
final class RestaurantApiDto {
  RestaurantApiDto._(this._json);

  final Map<String, dynamic> _json;

  factory RestaurantApiDto.fromDynamic(dynamic data) {
    if (data is Map<String, dynamic>) {
      return RestaurantApiDto._(data);
    }
    throw const FormatException('Restaurant JSON must be an object');
  }

  RestaurantSummary toDomain() {
    final j = _json;
    final id = readString(j, 'id', 'id');
    var name = readString(
      j,
      'name',
      'name',
      stripOpenApiPlaceholders: true,
    );
    if (name.isEmpty) name = 'Restaurant';
    var cover = readString(
      j,
      'imageUrl',
      'image_url',
      stripOpenApiPlaceholders: true,
      fallback: readString(
        j,
        'coverImageUrl',
        'cover_image_url',
        stripOpenApiPlaceholders: true,
        fallback: readString(
          j,
          'bannerImageUrl',
          'banner_image_url',
          stripOpenApiPlaceholders: true,
        ),
      ),
    );
    if (cover.isEmpty) {
      cover =
          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=32&q=10';
    }
    final logoStr = readString(
      j,
      'logoUrl',
      'logo_url',
      stripOpenApiPlaceholders: true,
    );
    final logoUrl = logoStr.isEmpty ? null : logoStr;

    final cuisineTags = _readCuisineTags(j);

    final deliveryFee = readDouble(
      j,
      'deliveryFee',
      'delivery_fee',
      fallback: readDouble(
        j,
        'deliveryFeeAmount',
        'delivery_fee_amount',
      ),
    );
    final hasFree = readBool(j, 'hasFreeDelivery', 'has_free_delivery') ||
        deliveryFee == 0;

    final currencyRaw = readString(
      j,
      'currencyCode',
      'currency_code',
      fallback: 'JOD',
      stripOpenApiPlaceholders: true,
    );
    final currencyCode = currencyRaw.isEmpty ? 'JOD' : currencyRaw;

    return RestaurantSummary(
      id: id,
      name: name,
      imageUrl: cover,
      logoUrl: logoUrl,
      description: readString(
        j,
        'description',
        'description',
        stripOpenApiPlaceholders: true,
      ),
      currencyCode: currencyCode,
      openingStatusLine: readString(
        j,
        'openingStatusLine',
        'opening_status_line',
        stripOpenApiPlaceholders: true,
        fallback: readString(
          j,
          'openingStatus',
          'opening_status',
          stripOpenApiPlaceholders: true,
          fallback: readString(
            j,
            'statusLine',
            'status_line',
            stripOpenApiPlaceholders: true,
            fallback: _contactDisplayLine(j),
          ),
        ),
      ),
      rating: readDouble(
        j,
        'ratingAverage',
        'rating_average',
        fallback: readDouble(j, 'rating', 'rating'),
      ),
      reviewCount: readInt(j, 'reviewCount', 'review_count'),
      cuisineTags: cuisineTags,
      estimatedDeliveryMinutes: readInt(
        j,
        'estimatedDeliveryMinutes',
        'estimated_delivery_minutes',
        fallback: readInt(
          j,
          'minEstimatedDeliveryMinutes',
          'min_estimated_delivery_minutes',
        ),
      ),
      estimatedDeliveryMinutesMax: _readOptionalInt(
        j,
        'estimatedDeliveryMinutesMax',
        'estimated_delivery_minutes_max',
      ),
      minimumOrderAmount: readDouble(
        j,
        'minimumOrderAmount',
        'minimum_order_amount',
      ),
      deliveryFeeAmount: deliveryFee,
      isOpen: readBool(j, 'isOpen', 'is_open', fallback: true),
      hasFreeDelivery: hasFree,
      isSponsored: readBool(j, 'isSponsored', 'is_sponsored'),
    );
  }

  static int? _readOptionalInt(
    Map<String, dynamic> j,
    String camel,
    String snake,
  ) {
    final v = readProp(j, camel, snake);
    if (v == null) return null;
    if (v is num) return v.toInt();
    return int.tryParse(v.toString());
  }

  static String _readCuisineTags(Map<String, dynamic> j) {
    final cuisineType = readString(
      j,
      'cuisineType',
      'cuisine_type',
      stripOpenApiPlaceholders: true,
    );
    if (cuisineType.isNotEmpty) return cuisineType;

    final direct = readString(
      j,
      'cuisineTags',
      'cuisine_tags',
      stripOpenApiPlaceholders: true,
      fallback: readString(
        j,
        'tags',
        'tags',
        stripOpenApiPlaceholders: true,
      ),
    );
    if (direct.isNotEmpty) return direct;

    final list = readList(j, 'cuisines', 'cuisines');
    if (list.isEmpty) return '';

    final parts = <String>[];
    for (final item in list) {
      if (item is String) {
        final cleaned = scrubOpenApiPlaceholder(item);
        if (cleaned.isNotEmpty) parts.add(cleaned);
      } else if (item is Map<String, dynamic>) {
        final n = readString(
          item,
          'name',
          'name',
          stripOpenApiPlaceholders: true,
        );
        if (n.isNotEmpty) parts.add(n);
      }
    }
    return parts.join(' • ');
  }

  /// [RestaurantDetailDto] exposes [Phone] and [AddressLine] for display.
  static String _contactDisplayLine(Map<String, dynamic> j) {
    final phone = readString(
      j,
      'phone',
      'phone',
      stripOpenApiPlaceholders: true,
    );
    final addr = readString(
      j,
      'addressLine',
      'address_line',
      stripOpenApiPlaceholders: true,
    );
    if (phone.isNotEmpty && addr.isNotEmpty) {
      return '$phone · $addr';
    }
    if (phone.isNotEmpty) return phone;
    return addr;
  }
}
