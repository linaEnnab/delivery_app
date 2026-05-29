import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/loyalty/data/datasources/loyalty_remote_datasource.dart';
import 'package:delivery_app/features/loyalty/data/repositories/loyalty_repository_impl.dart';
import 'package:delivery_app/features/loyalty/domain/repositories/loyalty_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loyaltyRemoteDataSourceProvider = Provider<LoyaltyRemoteDataSource>(
  (ref) => LoyaltyRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final loyaltyRepositoryProvider = Provider<LoyaltyRepository>(
  (ref) => LoyaltyRepositoryImpl(
    remoteDataSource: ref.watch(loyaltyRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
