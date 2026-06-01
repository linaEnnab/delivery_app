import 'package:delivery_app/core/startup/onboarding_completion_provider.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_session_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifies [GoRouter] when session or onboarding state changes so [redirect] re-runs.
final goRouterRefreshProvider = Provider<GoRouterRefreshNotifier>((ref) {
  final notifier = GoRouterRefreshNotifier();
  ref.onDispose(notifier.dispose);
  ref.listen<bool>(
    authSessionNotifierProvider,
    (Object? previous, Object? next) => notifier.notify(),
    fireImmediately: false,
  );
  ref.listen<bool>(
    onboardingCompletedNotifierProvider,
    (Object? previous, Object? next) => notifier.notify(),
    fireImmediately: false,
  );
  return notifier;
});

final class GoRouterRefreshNotifier extends ChangeNotifier {
  void notify() => notifyListeners();
}
