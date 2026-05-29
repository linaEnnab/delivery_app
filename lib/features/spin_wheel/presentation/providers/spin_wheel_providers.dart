import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/spin_wheel/data/datasources/spin_wheel_remote_datasource.dart';
import 'package:delivery_app/features/spin_wheel/data/repositories/spin_wheel_repository_impl.dart';
import 'package:delivery_app/features/spin_wheel/domain/repositories/spin_wheel_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spinWheelRemoteDataSourceProvider = Provider<SpinWheelRemoteDataSource>(
  (ref) => SpinWheelRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final spinWheelRepositoryProvider = Provider<SpinWheelRepository>(
  (ref) => SpinWheelRepositoryImpl(
    remoteDataSource: ref.watch(spinWheelRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
