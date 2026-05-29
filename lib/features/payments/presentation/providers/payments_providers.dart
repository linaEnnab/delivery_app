import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/payments/data/datasources/payments_remote_datasource.dart';
import 'package:delivery_app/features/payments/data/repositories/payments_repository_impl.dart';
import 'package:delivery_app/features/payments/domain/repositories/payments_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final paymentsRemoteDataSourceProvider = Provider<PaymentsRemoteDataSource>(
  (ref) => PaymentsRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final paymentsRepositoryProvider = Provider<PaymentsRepository>(
  (ref) => PaymentsRepositoryImpl(
    remoteDataSource: ref.watch(paymentsRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
