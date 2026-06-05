import 'package:delivery_app/core/constants/delivery_api_paths.dart';
import 'package:delivery_app/features/auth/data/models/auth_api_dto.dart';
import 'package:delivery_app/features/auth/domain/entities/auth_tokens.dart';
import 'package:dio/dio.dart';

/// Remote data source for authenticate user sessions.
abstract interface class AuthRemoteDataSource {
  Future<AuthTokens> login({
    required String email,
    required String password,
  });

  Future<AuthTokens> register({
    required String email,
    required String password,
    required String displayName,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<AuthTokens> login({
    required String email,
    required String password,
  }) async {
    final response = await _dio.post<dynamic>(
      DeliveryApiPaths.authenticationLogin,
      data: {
        'email': email,
        'password': password,
      },
    );
    _ensureSuccess(response);
    return AuthApiDto.fromDynamic(response.data).toDomain();
  }

  @override
  Future<AuthTokens> register({
    required String email,
    required String password,
    required String displayName,
  }) async {
    final response = await _dio.post<dynamic>(
      DeliveryApiPaths.authenticationRegister,
      data: {
        'email': email,
        'password': password,
        'displayName': displayName,
      },
    );
    _ensureSuccess(response);
    return AuthApiDto.fromDynamic(response.data).toDomain();
  }

  void _ensureSuccess(Response<dynamic> response) {
    final code = response.statusCode;
    if (code == null || code >= 400) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
      );
    }
  }
}
