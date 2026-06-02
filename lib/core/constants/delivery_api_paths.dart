/// REST paths for `Delivery.Api` controllers.
///
/// Paths are relative to [EnvConfig.apiBaseUrl]. Matches
/// `Delivery.Api/Controllers` route attributes (ASP.NET `[controller]`
/// expands to the short controller name: `Authentication`, `Order`, etc.).
abstract final class DeliveryApiPaths {
  // --- SystemController: [Route("api/[controller]")] ---
  static const systemHealth = '/api/System/health';

  // --- AuthenticationController ---
  static const authenticationRegister = '/api/Authentication/register';
  static const authenticationLogin = '/api/Authentication/login';

  // --- RestaurantController: [Route("api/restaurant")] ---
  static const restaurant = '/api/restaurant';

  static String restaurantById(String id) => '/api/restaurant/$id';

  // --- ProductController: catalog under `RestaurantsController`-style segment ---
  static String restaurantProducts(String restaurantId) =>
      '/api/restaurants/$restaurantId/products';

  // --- CategoryController: [Route("api/categories")] ---
  static String categoriesForRestaurant(String restaurantId) =>
      '/api/categories/restaurant/$restaurantId';

  // --- OrderController: [Route("api/[controller]")] ---
  /// `POST` create ([CreateOrderRequest]); response `{ "orderId": "<guid>" }`.
  static const order = '/api/Order';

  /// `GET`
  static String orderById(String id) => '/api/Order/$id';

  /// `GET` — optional query `status` ([OrderStatus] enum; wire format follows ASP.NET JSON defaults).
  static const orderCustomer = '/api/Order/customer';

  /// `PATCH` + JSON ([UpdateOrderStatusRequest]).
  static String orderStatusPatch(String id) => '/api/Order/$id/status';

  // --- ReviewController: [Route("api/[controller]")] ---
  /// `POST` ([SubmitReviewRequest]).
  static const reviewSubmit = '/api/Review';

  /// `GET`
  static String reviewRestaurant(String restaurantId) =>
      '/api/Review/restaurant/$restaurantId';

  /// `GET`
  static String reviewDriver(String driverId) =>
      '/api/Review/driver/$driverId';

  // --- RewardController: [Route("api/[controller]")] ---
  /// `GET` — returns [LoyaltySummaryDto] (`customerId`, `pointsBalance`, `recentTransactions`).
  static const rewardLoyaltyBalance = '/api/Reward/loyalty-balance';

  /// `GET`
  static const rewardHistory = '/api/Reward/reward-history';

  /// `POST` ([SpinWheelRequest]).
  static const rewardSpinWheel = '/api/Reward/spin-wheel';

  // --- DriverController: [Route("api/driver")] — all require Driver policy ---
  /// `GET`
  static const driverProfile = '/api/driver/profile';

  /// `PATCH` + JSON body ([UpdateDriverStatusRequest] on backend).
  static const driverStatus = '/api/driver/status';

  /// `PATCH` + JSON body ([UpdateDriverLocationRequest] on backend).
  static const driverLocation = '/api/driver/location';

  /// `GET`
  static const driverOrdersAvailable = '/api/driver/orders/available';

  /// `GET`
  static const driverOrdersAssigned = '/api/driver/orders/assigned';

  /// `POST` (no body in API contract).
  static String driverOrderAccept(String orderId) =>
      '/api/driver/orders/$orderId/accept';

  /// `POST` (no body in API contract).
  static String driverOrderReject(String orderId) =>
      '/api/driver/orders/$orderId/reject';

  /// `PATCH` (no body in API contract).
  static String driverOrderPickedUp(String orderId) =>
      '/api/driver/orders/$orderId/picked-up';

  /// `PATCH` (no body in API contract).
  static String driverOrderOnTheWay(String orderId) =>
      '/api/driver/orders/$orderId/on-the-way';

  /// `PATCH` (no body in API contract).
  static String driverOrderDelivered(String orderId) =>
      '/api/driver/orders/$orderId/delivered';

  // --- UploadController: [Route("api/upload")] ---
  /// `POST` `multipart/form-data`: fields `file`, `folder`.
  static const uploadImage = '/api/upload/image';

  // --- AdminController: [Route("api/admin")] — Admin JWT only ---
  /// `GET`
  static const adminSystemCheck = '/api/admin/system-check';

  /// `POST` create (no `GET` list on this collection in Delivery.Api).
  static const adminRestaurants = '/api/admin/restaurants';

  /// `PUT` / `DELETE` for `{id}`.
  static String adminRestaurant(String id) => '/api/admin/restaurants/$id';

  /// `POST` create.
  static const adminCategories = '/api/admin/categories';

  /// `PUT` / `DELETE` for `{id}`.
  static String adminCategory(String id) => '/api/admin/categories/$id';

  /// `POST` create.
  static const adminProducts = '/api/admin/products';

  /// `PUT` / `DELETE` for `{id}`.
  static String adminProduct(String id) => '/api/admin/products/$id';

  /// `GET` list.
  static const adminDrivers = '/api/admin/drivers';

  /// `PATCH`
  static String adminDriverEnable(String id) =>
      '/api/admin/drivers/$id/enable';

  /// `PATCH`
  static String adminDriverDisable(String id) =>
      '/api/admin/drivers/$id/disable';

  // --- RestaurantOrdersController: [Route("api/restaurant/orders")] ---
  /// `GET`
  static const restaurantOrders = '/api/restaurant/orders';

  /// `POST`
  static String restaurantOrderAccept(String orderId) =>
      '/api/restaurant/orders/$orderId/accept';

  /// `POST` + optional JSON ([RejectRestaurantOrderRequest]).
  static String restaurantOrderReject(String orderId) =>
      '/api/restaurant/orders/$orderId/reject';

  /// `PATCH` + JSON ([UpdateKitchenStatusRequest]).
  static String restaurantOrderKitchenStatus(String orderId) =>
      '/api/restaurant/orders/$orderId/kitchen-status';

  // --- RestaurantManagementController: [Route("api/restaurant/management")] ---
  static const restaurantManagementSummary =
      '/api/restaurant/management/summary';

  static const restaurantManagementSettingsGet =
      '/api/restaurant/management/settings';

  static const restaurantManagementSettingsPatch =
      '/api/restaurant/management/settings';
}
