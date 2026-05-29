import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/media_upload/domain/create_presigned_upload_params.dart';
import 'package:delivery_app/shared/domain/entities/presigned_upload.dart';

abstract interface class MediaUploadRepository {
  Future<Result<PresignedUpload>> requestPresignedUpload(
    CreatePresignedUploadParams params,
  );

  Future<Result<void>> confirmUpload(String mediaId);
}
