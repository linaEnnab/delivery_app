import 'package:delivery_app/core/constants/storage_keys.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Secure token persistence for JWT auth against ASP.NET Core API.
abstract interface class TokenStorage {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveTokens({required String access, required String refresh});
  Future<void> clearTokens();
}

final class SecureTokenStorage implements TokenStorage {
  SecureTokenStorage(this._storage);

  final FlutterSecureStorage _storage;

  @override
  Future<String?> getAccessToken() =>
      _storage.read(key: StorageKeys.accessToken);

  @override
  Future<String?> getRefreshToken() =>
      _storage.read(key: StorageKeys.refreshToken);

  @override
  Future<void> saveTokens({
    required String access,
    required String refresh,
  }) async {
    await _storage.write(key: StorageKeys.accessToken, value: access);
    await _storage.write(key: StorageKeys.refreshToken, value: refresh);
  }

  @override
  Future<void> clearTokens() async {
    await _storage.delete(key: StorageKeys.accessToken);
    await _storage.delete(key: StorageKeys.refreshToken);
  }
}

final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(),
);

final tokenStorageProvider = Provider<TokenStorage>(
  (ref) => SecureTokenStorage(ref.watch(secureStorageProvider)),
);
