import 'package:delivery_app/core/constants/storage_keys.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists whether the customer has finished onboarding (including skip).
final onboardingCompletedNotifierProvider =
    NotifierProvider<OnboardingCompletedNotifier, bool>(
  OnboardingCompletedNotifier.new,
);

class OnboardingCompletedNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  Future<void> hydrateFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool(StorageKeys.onboardingCompleted) ?? false;
  }

  Future<void> markCompleted() async {
    state = true;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StorageKeys.onboardingCompleted, true);
  }
}

/// Read-only flag for redirects and splash routing.
final onboardingCompletedProvider = Provider<bool>(
  (ref) => ref.watch(onboardingCompletedNotifierProvider),
);
