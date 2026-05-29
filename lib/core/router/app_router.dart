import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/router/route_placeholder.dart';
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
    redirect: (context, state) => _redirect(ref, state),
    routes: [
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        builder: (_, __) => const RoutePlaceholder(routeName: RouteNames.splash),
      ),
      GoRoute(
        path: RoutePaths.login,
        name: RouteNames.login,
        builder: (_, __) => const RoutePlaceholder(routeName: RouteNames.login),
      ),
      GoRoute(
        path: RoutePaths.register,
        name: RouteNames.register,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.register),
      ),
      GoRoute(
        path: RoutePaths.forgotPassword,
        name: RouteNames.forgotPassword,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.forgotPassword),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            RoutePlaceholder(routeName: state.uri.path),
        branches: [
          _shellBranch(RoutePaths.home, RouteNames.home),
          _shellBranch(RoutePaths.search, RouteNames.search),
          _shellBranch(RoutePaths.orders, RouteNames.orders),
          _shellBranch(RoutePaths.profile, RouteNames.profile),
        ],
      ),
      GoRoute(
        path: RoutePaths.restaurants,
        name: RouteNames.restaurants,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.restaurants),
      ),
      GoRoute(
        path: RoutePaths.restaurantDetails,
        name: RouteNames.restaurantDetails,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.restaurantDetails),
      ),
      GoRoute(
        path: RoutePaths.productDetails,
        name: RouteNames.productDetails,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.productDetails),
      ),
      GoRoute(
        path: RoutePaths.categories,
        name: RouteNames.categories,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.categories),
      ),
      GoRoute(
        path: RoutePaths.categoryDetails,
        name: RouteNames.categoryDetails,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.categoryDetails),
      ),
      GoRoute(
        path: RoutePaths.cart,
        name: RouteNames.cart,
        builder: (_, __) => const RoutePlaceholder(routeName: RouteNames.cart),
      ),
      GoRoute(
        path: RoutePaths.checkout,
        name: RouteNames.checkout,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.checkout),
      ),
      GoRoute(
        path: RoutePaths.orderDetails,
        name: RouteNames.orderDetails,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.orderDetails),
      ),
      GoRoute(
        path: RoutePaths.orderTracking,
        name: RouteNames.orderTracking,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.orderTracking),
      ),
      GoRoute(
        path: RoutePaths.createReview,
        name: RouteNames.createReview,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.createReview),
      ),
      GoRoute(
        path: RoutePaths.loyalty,
        name: RouteNames.loyalty,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.loyalty),
      ),
      GoRoute(
        path: RoutePaths.rewardsCatalog,
        name: RouteNames.rewardsCatalog,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.rewardsCatalog),
      ),
      GoRoute(
        path: RoutePaths.rewardHistory,
        name: RouteNames.rewardHistory,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.rewardHistory),
      ),
      GoRoute(
        path: RoutePaths.spinWheel,
        name: RouteNames.spinWheel,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.spinWheel),
      ),
      GoRoute(
        path: RoutePaths.notifications,
        name: RouteNames.notifications,
        builder: (_, __) =>
            const RoutePlaceholder(routeName: RouteNames.notifications),
      ),
    ],
  );
}

StatefulShellBranch _shellBranch(String path, String name) {
  return StatefulShellBranch(
    navigatorKey: GlobalKey<NavigatorState>(),
    routes: [
      GoRoute(
        path: path,
        name: name,
        builder: (_, __) => RoutePlaceholder(routeName: name),
      ),
    ],
  );
}

String? _redirect(Ref ref, GoRouterState state) {
  final isAuthenticated = ref.read(authSessionProvider);
  final location = state.matchedLocation;

  final isAuthRoute = location == RoutePaths.login ||
      location == RoutePaths.register ||
      location == RoutePaths.forgotPassword;
  final isSplash = location == RoutePaths.splash;

  if (isSplash) return null;

  if (!isAuthenticated && !isAuthRoute) {
    return RoutePaths.login;
  }

  if (isAuthenticated && isAuthRoute) {
    return RoutePaths.home;
  }

  return null;
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return createAppRouter(ref);
});
