import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/wallet/data/datasources/wallet_remote_datasource.dart';
import 'package:delivery_app/features/wallet/data/repositories/wallet_repository_impl.dart';
import 'package:delivery_app/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final walletRemoteDataSourceProvider = Provider<WalletRemoteDataSource>(
  (ref) => WalletRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final walletRepositoryProvider = Provider<WalletRepository>(
  (ref) => WalletRepositoryImpl(
    remoteDataSource: ref.watch(walletRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
