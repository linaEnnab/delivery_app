import 'dart:async';

import 'package:delivery_app/core/router/app_router.dart';
import 'package:delivery_app/features/auth/presentation/mock/mock_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginControllerProvider =
    AutoDisposeAsyncNotifierProvider<LoginController, void>(
  LoginController.new,
);

class LoginController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> submit({
    required String phone,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(mockAuthRepositoryProvider).login(
            phone: phone,
            password: password,
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
    String? email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(mockAuthRepositoryProvider).register(
            fullName: fullName,
            phone: phone,
            email: email,
            password: password,
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
