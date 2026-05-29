// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresignedUploadImpl _$$PresignedUploadImplFromJson(
  Map<String, dynamic> json,
) => _$PresignedUploadImpl(
  mediaId: json['media_id'] as String,
  uploadUrl: json['upload_url'] as String,
  httpMethod: json['http_method'] as String? ?? 'PUT',
  headers: (json['headers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  formFields: (json['form_fields'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
);

Map<String, dynamic> _$$PresignedUploadImplToJson(
  _$PresignedUploadImpl instance,
) => <String, dynamic>{
  'media_id': instance.mediaId,
  'upload_url': instance.uploadUrl,
  'http_method': instance.httpMethod,
  if (instance.headers case final value?) 'headers': value,
  if (instance.formFields case final value?) 'form_fields': value,
};
