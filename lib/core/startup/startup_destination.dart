import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/startup/onboarding_completion_provider.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Next route after splash, from persisted auth + onboarding (single source of truth).
final postSplashDestinationProvider = Provider<String>((ref) {
  final authed = ref.watch(authSessionProvider);
  if (authed) return RoutePaths.home;
  final onboardingDone = ref.watch(onboardingCompletedProvider);
  if (!onboardingDone) return RoutePaths.onboarding;
  return RoutePaths.login;
});
