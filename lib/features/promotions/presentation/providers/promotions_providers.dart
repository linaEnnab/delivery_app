import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/promotions/data/datasources/promotions_remote_datasource.dart';
import 'package:delivery_app/features/promotions/data/repositories/promotions_repository_impl.dart';
import 'package:delivery_app/features/promotions/domain/repositories/promotions_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final promotionsRemoteDataSourceProvider =
    Provider<PromotionsRemoteDataSource>(
  (ref) => PromotionsRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final promotionsRepositoryProvider = Provider<PromotionsRepository>(
  (ref) => PromotionsRepositoryImpl(
    remoteDataSource: ref.watch(promotionsRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
