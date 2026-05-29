import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:delivery_app/features/auth/domain/entities/auth_tokens.dart';
import 'package:delivery_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:delivery_app/shared/domain/entities/user_profile.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final AuthRemoteDataSource _remote;

  @override
  Future<Result<AuthTokens>> login({
    required String email,
    required String password,
  }) async {
    return Left(Failure.unexpected(message: 'Not implemented: $email'));
  }

  @override
  Future<Result<AuthTokens>> register({
    required String fullName,
    required String email,
    required String phone,
    required String password,
  }) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<void>> logout() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<UserProfile>> getCurrentUser() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<AuthTokens>> refreshToken() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
