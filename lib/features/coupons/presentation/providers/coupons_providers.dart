import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/coupons/data/datasources/coupons_remote_datasource.dart';
import 'package:delivery_app/features/coupons/data/repositories/coupons_repository_impl.dart';
import 'package:delivery_app/features/coupons/domain/repositories/coupons_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final couponsRemoteDataSourceProvider = Provider<CouponsRemoteDataSource>(
  (ref) => CouponsRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final couponsRepositoryProvider = Provider<CouponsRepository>(
  (ref) => CouponsRepositoryImpl(
    remoteDataSource: ref.watch(couponsRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
