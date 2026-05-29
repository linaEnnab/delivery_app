/// REST endpoint paths for ASP.NET Core Web API (versioned).
///
/// Paths are relative to [EnvConfig.apiBaseUrl].
abstract final class ApiEndpoints {
  // Auth
  static const login = '/auth/login';
  static const register = '/auth/register';
  static const refreshToken = '/auth/refresh';
  static const logout = '/auth/logout';
  static const me = '/auth/me';

  // Home & discovery
  static const home = '/home';
  static const banners = '/home/banners';

  // Restaurants
  static const restaurants = '/restaurants';
  static String restaurant(String id) => '/restaurants/$id';
  static String restaurantMenu(String id) => '/restaurants/$id/menu';

  // Categories
  static const categories = '/categories';
  static String categoryRestaurants(String id) => '/categories/$id/restaurants';

  // Products
  static String product(String id) => '/products/$id';

  // Search
  static const search = '/search';

  // Cart
  static const cart = '/cart';
  static const cartItems = '/cart/items';
  static String cartItem(String id) => '/cart/items/$id';

  // Checkout
  static const checkoutPreview = '/checkout/preview';
  static const checkoutPlaceOrder = '/checkout/place-order';

  // Orders
  static const orders = '/orders';
  static String order(String id) => '/orders/$id';
  static String orderTracking(String id) => '/orders/$id/tracking';
  static String orderCancel(String id) => '/orders/$id/cancel';

  // Reviews (post-delivery only — enforced server-side)
  static const reviews = '/reviews';
  static String orderReviewEligibility(String orderId) =>
      '/orders/$orderId/review-eligibility';

  // Notifications
  static const notifications = '/notifications';
  static String notificationRead(String id) => '/notifications/$id/read';

  // Profile
  static const profile = '/profile';
  static const addresses = '/profile/addresses';

  // Loyalty (points ledger)
  static const loyaltyBalance = '/loyalty/balance';
  static const loyaltyHistory = '/loyalty/history';
  static const loyaltyFreeDeliveryRewards = '/loyalty/free-delivery-rewards';

  // Rewards & spin wheel (customer flows; paths align with typical ASP.NET layout)
  static const rewardsCatalog = '/loyalty/rewards';
  static const rewardsRedeem = '/loyalty/redeem';
  static const spinWheelAvailability = '/loyalty/spin-wheel/availability';
  static const spinWheelSpin = '/loyalty/spin-wheel';

  // Promotions & coupons
  static const promotions = '/promotions';
  static String promotion(String id) => '/promotions/$id';
  static const coupons = '/promotions/coupons';
  static const myCoupons = '/promotions/coupons/my';
  static const validateCoupon = '/promotions/coupons/validate';

  // Payments (PSP session — server creates intent / client secret)
  static const paymentSessions = '/payments/sessions';
  static String paymentSession(String id) => '/payments/sessions/$id';

  // Wallet (stored value)
  static const walletBalance = '/wallet/balance';
  static const walletTransactions = '/wallet/transactions';

  // Media uploads (presigned URLs for reviews, avatars, etc.)
  static const mediaUploadRequests = '/media/upload-requests';
  static String mediaUploadComplete(String mediaId) =>
      '/media/$mediaId/complete';
}
