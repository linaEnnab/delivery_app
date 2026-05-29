import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/auth/domain/entities/auth_tokens.dart';
import 'package:delivery_app/shared/domain/entities/user_profile.dart';

/// Authenticate user sessions.
abstract interface class AuthRepository {
  Future<Result<AuthTokens>> login({
    required String email,
    required String password,
  });

  Future<Result<AuthTokens>> register({
    required String fullName,
    required String email,
    required String phone,
    required String password,
  });

  Future<Result<void>> logout();

  Future<Result<UserProfile>> getCurrentUser();

  Future<Result<AuthTokens>> refreshToken();
}
