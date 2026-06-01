import 'package:delivery_app/core/storage/token_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Customer session — restored from secure token storage on startup.
final authSessionNotifierProvider =
    NotifierProvider<AuthSessionNotifier, bool>(AuthSessionNotifier.new);

class AuthSessionNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  /// Hydrates [state] from persisted access token (call from [bootstrap] before [runApp]).
  Future<void> restoreFromStorage() async {
    final access = await ref.read(tokenStorageProvider).getAccessToken();
    state = access != null && access.trim().isNotEmpty;
  }

  void setSignedIn(bool value) => state = value;

  Future<void> signOut() async {
    await ref.read(tokenStorageProvider).clearTokens();
    state = false;
  }
}

/// Read-only view for redirects and splash routing.
final authSessionProvider = Provider<bool>(
  (ref) => ref.watch(authSessionNotifierProvider),
);
