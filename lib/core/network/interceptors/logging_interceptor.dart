import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// Logs HTTP traffic in non-production environments.
class LoggingInterceptor extends Interceptor {
  LoggingInterceptor(this._logger, {required this.enabled});

  final Logger _logger;
  final bool enabled;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (enabled) {
      _logger.d('→ ${options.method} ${options.uri}');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    if (enabled) {
      _logger.d('← ${response.statusCode} ${response.requestOptions.uri}');
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (enabled) {
      _logger.e('✕ ${err.requestOptions.uri}', error: err.message);
    }
    handler.next(err);
  }
}
