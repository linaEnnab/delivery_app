import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/product/data/datasources/product_remote_datasource.dart';
import 'package:delivery_app/features/product/data/repositories/product_repository_impl.dart';
import 'package:delivery_app/features/product/domain/repositories/product_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productRemoteDataSourceProvider = Provider<ProductRemoteDataSource>(
  (ref) => ProductRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductRepositoryImpl(
    remoteDataSource: ref.watch(productRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
