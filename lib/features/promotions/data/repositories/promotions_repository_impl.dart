import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/promotions/data/datasources/promotions_remote_datasource.dart';
import 'package:delivery_app/features/promotions/domain/repositories/promotions_repository.dart';
import 'package:delivery_app/shared/domain/entities/promotion.dart';
import 'package:fpdart/fpdart.dart';

class PromotionsRepositoryImpl implements PromotionsRepository {
  PromotionsRepositoryImpl({
    required PromotionsRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final PromotionsRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<List<Promotion>>> listActivePromotions() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<Promotion>> getPromotion(String id) async {
    return Left(Failure.unexpected(message: 'Not implemented: $id'));
  }
}
