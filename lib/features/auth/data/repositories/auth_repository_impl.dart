import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/storage/token_storage.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:delivery_app/features/auth/data/utils/dio_failure_mapper.dart';
import 'package:delivery_app/features/auth/domain/entities/auth_tokens.dart';
import 'package:delivery_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:delivery_app/shared/domain/entities/user_profile.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required TokenStorage tokenStorage,
  })  : _remote = remoteDataSource,
        _tokenStorage = tokenStorage;

  final AuthRemoteDataSource _remote;
  final TokenStorage _tokenStorage;

  @override
  Future<Result<AuthTokens>> login({
    required String email,
    required String password,
  }) async {
    try {
      final tokens = await _remote.login(email: email, password: password);
      await _persistTokens(tokens);
      return Right(tokens);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }

  @override
  Future<Result<AuthTokens>> register({
    required String fullName,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      final tokens = await _remote.register(
        email: email,
        password: password,
        displayName: fullName,
      );
      await _persistTokens(tokens);
      return Right(tokens);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await _tokenStorage.clearTokens();
      return const Right(null);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }

  @override
  Future<Result<UserProfile>> getCurrentUser() async {
    return const Left(
      Failure.unexpected(message: 'Not implemented'),
    );
  }

  @override
  Future<Result<AuthTokens>> refreshToken() async {
    return const Left(
      Failure.unexpected(message: 'Not implemented'),
    );
  }

  Future<void> _persistTokens(AuthTokens tokens) async {
    await _tokenStorage.saveTokens(
      access: tokens.accessToken,
      refresh: tokens.refreshToken,
    );
  }
}
