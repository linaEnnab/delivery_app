import 'package:delivery_app/core/usecases/usecase.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/auth/domain/entities/auth_tokens.dart';
import 'package:delivery_app/features/auth/domain/repositories/auth_repository.dart';

class LoginParams {
  const LoginParams({required this.email, required this.password});

  final String email;
  final String password;
}

class LoginUseCase implements UseCase<AuthTokens, LoginParams> {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Result<AuthTokens>> call(LoginParams params) {
    return _repository.login(email: params.email, password: params.password);
  }
}
