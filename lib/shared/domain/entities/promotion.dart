import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';
part 'promotion.g.dart';

/// Marketing promotion surfaced in home / discovery (separate from coupon codes).
@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required String id,
    required String title,
    String? subtitle,
    String? imageUrl,
    String? deepLinkRoute,
    String? restaurantId,
    DateTime? validFrom,
    DateTime? validUntil,
    @Default(false) bool isPlatformWide,
  }) = _Promotion;

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);
}
