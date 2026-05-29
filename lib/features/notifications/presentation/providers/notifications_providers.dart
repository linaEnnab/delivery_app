import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/notifications/data/datasources/notifications_remote_datasource.dart';
import 'package:delivery_app/features/notifications/data/repositories/notifications_repository_impl.dart';
import 'package:delivery_app/features/notifications/domain/repositories/notifications_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final notificationsRemoteDataSourceProvider = Provider<NotificationsRemoteDataSource>(
  (ref) => NotificationsRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final notificationsRepositoryProvider = Provider<NotificationsRepository>(
  (ref) => NotificationsRepositoryImpl(
    remoteDataSource: ref.watch(notificationsRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
