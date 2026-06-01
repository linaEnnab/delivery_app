import 'package:delivery_app/core/router/cart_route.dart';
import 'package:delivery_app/core/router/forgot_password_route.dart';
import 'package:delivery_app/core/router/go_router_refresh.dart';
import 'package:delivery_app/core/router/home_route.dart';
import 'package:delivery_app/core/router/login_route.dart';
import 'package:delivery_app/core/router/onboarding_route.dart';
import 'package:delivery_app/core/router/register_route.dart';
import 'package:delivery_app/core/router/restaurant_detail_route.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/router/splash_route.dart';
import 'package:delivery_app/core/startup/onboarding_completion_provider.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_session_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

/// GoRouter configuration for the customer app.
GoRouter createAppRouter(Ref ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutePaths.splash,
    debugLogDiagnostics: true,
    refreshListenable: ref.watch(goRouterRefreshProvider),
    redirect: (context, state) => _redirect(ref, state),
    routes: [
      SplashRoute.goRoute,
      OnboardingRoute.goRoute,
      LoginRoute.goRoute,
      RegisterRoute.goRoute,
      ForgotPasswordRoute.goRoute,
      HomeRoute.goRoute,
      CartRoute.goRoute,
      RestaurantDetailRoute.goRoute,
    ],
  );
}

String? _redirect(Ref ref, GoRouterState state) {
  final location = state.matchedLocation;
  final isAuthenticated = ref.read(authSessionProvider);
  final onboardingDone = ref.read(onboardingCompletedProvider);

  if (isAuthenticated) {
    final leavingAuthShell = location == RoutePaths.login ||
        location == RoutePaths.register ||
        location == RoutePaths.forgotPassword ||
        location == RoutePaths.onboarding;
    if (leavingAuthShell) {
      return RoutePaths.home;
    }
    return null;
  }

  if (location == RoutePaths.home) {
    return RoutePaths.login;
  }

  if (state.uri.path.startsWith('/restaurant/')) {
    return RoutePaths.login;
  }

  if (state.uri.path == RoutePaths.cart) {
    return RoutePaths.login;
  }

  if (location == RoutePaths.onboarding && onboardingDone) {
    return RoutePaths.login;
  }

  if (!onboardingDone) {
    final reachedAuthEarly = location == RoutePaths.login ||
        location == RoutePaths.register ||
        location == RoutePaths.forgotPassword;
    if (reachedAuthEarly) {
      return RoutePaths.onboarding;
    }
  }

  return null;
}

final goRouterProvider = Provider<GoRouter>(createAppRouter);
