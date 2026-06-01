import 'package:delivery_app/core/storage/token_storage.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Simulated auth API — delays only; all validation is client-side.
///
/// Persists tokens like production so cold start restores the session.
/// Swap for [AuthRepository] + remote datasource when backend is ready.
class MockAuthRepository {
  MockAuthRepository(this._ref);

  final Ref _ref;

  static const Duration _networkDelay = Duration(milliseconds: 750);

  Future<void> login({
    required String phone,
    required String password,
  }) async {
    await Future<void>.delayed(_networkDelay);
    final storage = _ref.read(tokenStorageProvider);
    await storage.saveTokens(
      access: 'mock_access_${phone.hashCode}',
      refresh: 'mock_refresh_${password.hashCode}',
    );
    _ref.read(authSessionNotifierProvider.notifier).setSignedIn(true);
  }

  Future<void> register({
    required String fullName,
    required String phone,
    String? email,
    required String password,
  }) async {
    await Future<void>.delayed(_networkDelay);
    final storage = _ref.read(tokenStorageProvider);
    await storage.saveTokens(
      access: 'mock_access_${phone.hashCode}',
      refresh: 'mock_refresh_${password.hashCode}',
    );
    _ref.read(authSessionNotifierProvider.notifier).setSignedIn(true);
  }

  Future<void> sendPasswordResetCode({required String phone}) async {
    await Future<void>.delayed(_networkDelay);
  }
}

final mockAuthRepositoryProvider = Provider<MockAuthRepository>(
  (ref) => MockAuthRepository(ref),
);
