import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/search/data/datasources/search_remote_datasource.dart';
import 'package:delivery_app/features/search/data/repositories/search_repository_impl.dart';
import 'package:delivery_app/features/search/domain/repositories/search_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchRemoteDataSourceProvider = Provider<SearchRemoteDataSource>(
  (ref) => SearchRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final searchRepositoryProvider = Provider<SearchRepository>(
  (ref) => SearchRepositoryImpl(
    remoteDataSource: ref.watch(searchRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
