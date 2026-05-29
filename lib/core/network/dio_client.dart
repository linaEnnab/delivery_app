import 'package:delivery_app/core/config/env/env_config.dart';
import 'package:delivery_app/core/constants/api_constants.dart';
import 'package:delivery_app/core/network/interceptors/auth_interceptor.dart';
import 'package:delivery_app/core/network/interceptors/error_interceptor.dart';
import 'package:delivery_app/core/network/interceptors/logging_interceptor.dart';
import 'package:delivery_app/core/storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

/// Creates and configures the shared [Dio] instance.
Dio createDioClient({
  required EnvConfig env,
  required TokenStorage tokenStorage,
  required Logger logger,
}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: env.apiBaseUrl,
      connectTimeout: env.apiTimeout,
      receiveTimeout: env.apiTimeout,
      sendTimeout: env.apiTimeout,
      headers: {
        'Content-Type': ApiConstants.contentTypeJson,
        'Accept': ApiConstants.acceptJson,
        ApiConstants.clientPlatformHeader: ApiConstants.clientPlatformValue,
      },
      validateStatus: (status) => status != null && status < 500,
    ),
  );

  dio.interceptors.addAll([
    AuthInterceptor(tokenStorage),
    ErrorInterceptor(),
    LoggingInterceptor(logger, enabled: env.enableLogging),
  ]);

  return dio;
}

final loggerProvider = Provider<Logger>((ref) => Logger());

final dioProvider = Provider<Dio>((ref) {
  throw UnimplementedError('Dio must be overridden at bootstrap');
});
