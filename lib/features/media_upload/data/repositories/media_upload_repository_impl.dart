import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/media_upload/data/datasources/media_upload_remote_datasource.dart';
import 'package:delivery_app/features/media_upload/domain/create_presigned_upload_params.dart';
import 'package:delivery_app/features/media_upload/domain/repositories/media_upload_repository.dart';
import 'package:delivery_app/shared/domain/entities/presigned_upload.dart';
import 'package:fpdart/fpdart.dart';

class MediaUploadRepositoryImpl implements MediaUploadRepository {
  MediaUploadRepositoryImpl({
    required MediaUploadRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final MediaUploadRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<PresignedUpload>> requestPresignedUpload(
    CreatePresignedUploadParams params,
  ) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<void>> confirmUpload(String mediaId) async {
    return Left(Failure.unexpected(message: 'Not implemented: $mediaId'));
  }
}
