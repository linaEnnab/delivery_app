import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/cart/data/datasources/cart_remote_datasource.dart';
import 'package:delivery_app/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:delivery_app/features/cart/domain/repositories/cart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartRemoteDataSourceProvider = Provider<CartRemoteDataSource>(
  (ref) => CartRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final cartRepositoryProvider = Provider<CartRepository>(
  (ref) => CartRepositoryImpl(
    remoteDataSource: ref.watch(cartRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
