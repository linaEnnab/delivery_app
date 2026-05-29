import 'package:delivery_app/shared/domain/enums/media_upload_purpose.dart';

class CreatePresignedUploadParams {
  const CreatePresignedUploadParams({
    required this.purpose,
    required this.fileName,
    required this.contentType,
  });

  final MediaUploadPurpose purpose;
  final String fileName;
  final String contentType;
}
