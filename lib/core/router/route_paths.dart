/// Type-safe route path constants for GoRouter.
abstract final class RoutePaths {
  // Auth
  static const splash = '/';
  static const login = '/login';
  static const register = '/register';
  static const forgotPassword = '/forgot-password';

  // Main shell
  static const home = '/home';
  static const search = '/search';
  static const orders = '/orders';
  static const profile = '/profile';

  // Restaurants
  static const restaurants = '/restaurants';
  static const restaurantDetails = '/restaurants/:restaurantId';
  static const productDetails =
      '/restaurants/:restaurantId/products/:productId';

  // Categories
  static const categories = '/categories';
  static const categoryDetails = '/categories/:categoryId';

  // Cart & checkout
  static const cart = '/cart';
  static const checkout = '/checkout';

  // Orders
  static const orderDetails = '/orders/:orderId';
  static const orderTracking = '/orders/:orderId/tracking';

  // Reviews
  static const createReview = '/orders/:orderId/review';

  // Loyalty
  static const loyalty = '/loyalty';
  static const rewardsCatalog = '/loyalty/rewards';
  static const rewardHistory = '/loyalty/history';
  static const spinWheel = '/loyalty/spin-wheel';

  // Notifications
  static const notifications = '/notifications';
}
