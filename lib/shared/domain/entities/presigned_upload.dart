import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_upload.freezed.dart';
part 'presigned_upload.g.dart';

/// Presigned URL or multipart fields for direct-to-object-storage uploads.
@freezed
class PresignedUpload with _$PresignedUpload {
  const factory PresignedUpload({
    required String mediaId,
    required String uploadUrl,
    @Default('PUT') String httpMethod,
    Map<String, String>? headers,
    Map<String, String>? formFields,
  }) = _PresignedUpload;

  factory PresignedUpload.fromJson(Map<String, dynamic> json) =>
      _$PresignedUploadFromJson(json);
}
