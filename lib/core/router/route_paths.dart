/// Type-safe route path constants for GoRouter.
abstract final class RoutePaths {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
  static const forgotPassword = '/forgot-password';
  static const home = '/home';

  static const cart = '/cart';

  /// [GoRoute.path] segment parameter for restaurant detail (`/restaurant/:restaurantId`).
  static const restaurantDetailParam = 'restaurantId';

  /// GoRouter path pattern; the `:…` segment name equals [restaurantDetailParam].
  static String get restaurantDetailPattern =>
      '/restaurant/:$restaurantDetailParam';

  /// Resolved path for navigation: `/restaurant/<restaurantId>`.
  static String restaurantDetail(String restaurantId) =>
      '/restaurant/$restaurantId';
}
