import 'package:delivery_app/core/constants/api_constants.dart';
import 'package:delivery_app/core/storage/token_storage.dart';
import 'package:dio/dio.dart';

/// Attaches bearer token to outgoing requests.
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._tokenStorage);

  final TokenStorage _tokenStorage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenStorage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers[ApiConstants.authorizationHeader] =
          '${ApiConstants.bearerPrefix} $token';
    }
    handler.next(options);
  }
}
