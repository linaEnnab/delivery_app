import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/promotion.dart';

abstract interface class PromotionsRepository {
  Future<Result<List<Promotion>>> listActivePromotions();

  Future<Result<Promotion>> getPromotion(String id);
}
