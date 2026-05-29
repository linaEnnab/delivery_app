import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/media_upload/data/datasources/media_upload_remote_datasource.dart';
import 'package:delivery_app/features/media_upload/data/repositories/media_upload_repository_impl.dart';
import 'package:delivery_app/features/media_upload/domain/repositories/media_upload_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mediaUploadRemoteDataSourceProvider =
    Provider<MediaUploadRemoteDataSource>(
  (ref) => MediaUploadRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final mediaUploadRepositoryProvider = Provider<MediaUploadRepository>(
  (ref) => MediaUploadRepositoryImpl(
    remoteDataSource: ref.watch(mediaUploadRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);
