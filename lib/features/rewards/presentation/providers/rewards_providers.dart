import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/rewards/data/datasources/rewards_remote_datasource.dart';
import 'package:delivery_app/features/rewards/data/repositories/rewards_repository_impl.dart';
import 'package:delivery_app/features/rewards/domain/repositories/rewards_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rewardsRemoteDataSourceProvider = Provider<RewardsRemoteDataSource>(
  (ref) => RewardsRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final rewardsRepositoryProvider = Provider<RewardsRepository>(
  (ref) => RewardsRepositoryImpl(
    remoteDataSource: ref.watch(rewardsRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
