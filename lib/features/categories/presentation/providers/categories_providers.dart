import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/categories/data/datasources/categories_remote_datasource.dart';
import 'package:delivery_app/features/categories/data/repositories/categories_repository_impl.dart';
import 'package:delivery_app/features/categories/domain/repositories/categories_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesRemoteDataSourceProvider = Provider<CategoriesRemoteDataSource>(
  (ref) => CategoriesRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final categoriesRepositoryProvider = Provider<CategoriesRepository>(
  (ref) => CategoriesRepositoryImpl(
    remoteDataSource: ref.watch(categoriesRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
