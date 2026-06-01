/// Type-safe route path constants for GoRouter.
abstract final class RoutePaths {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
  static const forgotPassword = '/forgot-password';
  static const home = '/home';

  static const cart = '/cart';

  static const checkout = '/checkout';

  /// Delivery address editor (nested under [checkout] in GoRouter).
  static const checkoutDeliveryAddress = '$checkout/delivery-address';

  /// Post-checkout confirmation (nested under [checkout]).
  static const checkoutOrderSuccess = '$checkout/order-success';

  /// Pre-submit reward wheel (nested under [checkout]).
  static const checkoutRewardWheel = '$checkout/reward-wheel';

  /// Path parameter name for [orderTrackingPattern].
  static const orderTrackingParam = 'orderId';

  /// GoRouter pattern: `/orders/:orderId/tracking`.
  static const orderTrackingPattern = '/orders/:$orderTrackingParam/tracking';

  /// GoRouter pattern: `/orders/:orderId/review`.
  static const orderReviewPattern = '/orders/:$orderTrackingParam/review';

  /// Resolved path for navigation.
  static String orderTracking(String orderId) =>
      '/orders/$orderId/tracking';

  /// Resolved path for post-delivery review.
  static String orderReview(String orderId) => '/orders/$orderId/review';

  /// [GoRoute.path] segment parameter for restaurant detail (`/restaurant/:restaurantId`).
  static const restaurantDetailParam = 'restaurantId';

  /// GoRouter path pattern; the `:…` segment name equals [restaurantDetailParam].
  static String get restaurantDetailPattern =>
      '/restaurant/:$restaurantDetailParam';

  /// Resolved path for navigation: `/restaurant/<restaurantId>`.
  static String restaurantDetail(String restaurantId) =>
      '/restaurant/$restaurantId';

  /// Reward wheel history hub (`/rewards/wheel`).
  static const rewardWheel = '/rewards/wheel';

  /// Optional query: which delivered order’s spin to prioritize.
  static const rewardWheelOrderQuery = 'orderId';

  static String rewardWheelWithOrder(String orderId) =>
      '$rewardWheel?$rewardWheelOrderQuery=${Uri.encodeComponent(orderId)}';
}
