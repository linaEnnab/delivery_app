import 'dart:async';

import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/router/app_router.dart';
import 'package:delivery_app/features/auth/presentation/mock/mock_auth_repository.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_providers.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginControllerProvider =
    AutoDisposeAsyncNotifierProvider<LoginController, void>(
  LoginController.new,
);

class LoginController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> submit({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(authRepositoryProvider).login(
            email: email,
            password: password,
          );
      result.fold(
        (failure) => throw _failureToException(failure),
        (_) => ref.read(authSessionNotifierProvider.notifier).setSignedIn(true),
      );
    });
    if (!state.hasError) {
      ref.read(goRouterProvider).refresh();
    }
  }
}

final registerControllerProvider =
    AutoDisposeAsyncNotifierProvider<RegisterController, void>(
  RegisterController.new,
);

class RegisterController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> submit({
    required String fullName,
    required String phone,
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(authRepositoryProvider).register(
            fullName: fullName,
            email: email,
            phone: phone,
            password: password,
          );
      result.fold(
        (failure) => throw _failureToException(failure),
        (_) => ref.read(authSessionNotifierProvider.notifier).setSignedIn(true),
      );
    });
    if (!state.hasError) {
      ref.read(goRouterProvider).refresh();
    }
  }
}

final forgotPasswordControllerProvider =
    AutoDisposeAsyncNotifierProvider<ForgotPasswordController, void>(
  ForgotPasswordController.new,
);

class ForgotPasswordController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> submit({required String phone}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(mockAuthRepositoryProvider).sendPasswordResetCode(
            phone: phone,
          );
    });
  }
}

Exception _failureToException(Failure failure) {
  return failure.when(
    network: (message) => Exception(message),
    auth: (message) => Exception(message),
    validation: (message, fieldErrors) => Exception(message),
    notFound: (message) => Exception(message),
    businessRule: (message) => Exception(message),
    server: (message, code, statusCode) => Exception(message),
    cache: (message) => Exception(message),
    unexpected: (message) => Exception(message),
  );
}
