import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:delivery_app/features/home/data/repositories/home_repository_impl.dart';
import 'package:delivery_app/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRemoteDataSourceProvider = Provider<HomeRemoteDataSource>(
  (ref) => HomeRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final homeRepositoryProvider = Provider<HomeRepository>(
  (ref) => HomeRepositoryImpl(
    remoteDataSource: ref.watch(homeRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
