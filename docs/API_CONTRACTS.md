# Delivery.Api HTTP contracts (customer app)

Canonical route strings live in `lib/core/constants/delivery_api_paths.dart` (`DeliveryApiPaths`). Controllers are under `Delivery.Api/Controllers` in the backend repo.

Unless noted, JSON uses **camelCase** property names (ASP.NET Core default). Enum values may serialize as **numbers** unless the API is configured with `JsonStringEnumConverter`—confirm in `Program.cs` / `Startup` when wiring clients.

## Public catalog (anonymous)

| Method | Path | Response |
|--------|------|----------|
| `GET` | `/api/restaurant` | `RestaurantListItemDto[]` |
| `GET` | `/api/restaurant/{id}` | `RestaurantDetailDto` or `404` |
| `GET` | `/api/restaurants/{restaurantId}/products` | `ProductDto[]` |
| `GET` | `/api/categories/restaurant/{restaurantId}` | `CategoryDto[]` |
| `GET` | `/api/Review/restaurant/{restaurantId}` | reviews payload from handler |
| `GET` | `/api/Review/driver/{driverId}` | reviews payload from handler |

### `RestaurantListItemDto`

`id`, `name`, `imageUrl`, `logoUrl`, `ratingAverage`, `reviewCount`, `cuisineType`, `deliveryFee`, `estimatedDeliveryMinutes`.

### `RestaurantDetailDto`

Same core presentation fields as the list item, plus `description`, `phone`, `addressLine`.

### `ProductDto`

`id`, `restaurantId`, `categoryId`, `name`, `description`, `price` (decimal), `imageUrl`, `displayOrder`, `isAvailable`, `isRewardEligible`, `rewardTag`.

The Flutter client maps this to the in-app `Product` model and **sorts menu rows by `displayOrder`** after fetch so ordering matches the backend contract even if the server does not pre-sort.

## Authentication (`AuthenticationController`, anonymous)

| Method | Path | Body |
|--------|------|------|
| `POST` | `/api/Authentication/register` | `RegisterRequest` (`email`, `password`, `displayName`) |
| `POST` | `/api/Authentication/login` | `LoginRequest` (`email`, `password`) |

## Orders (`OrderController`, `/api/Order`)

| Method | Path | Auth | Notes |
|--------|------|------|--------|
| `POST` | `/api/Order` | Customer | Body: `CreateOrderRequest`. Success: `201` with `{ "orderId": "<guid>" }`. |
| `GET` | `/api/Order/{id}` | Order participant | |
| `GET` | `/api/Order/customer` | Customer | Optional query: `status` (`OrderStatus`). |
| `PATCH` | `/api/Order/{id}/status` | Order status management | Body: `{ "newStatus": <OrderStatus> }`. |

### `CreateOrderRequest`

`restaurantId`, `deliveryAddressId`, `lineItems[]` (`productId`, `productNameSnapshot`, `quantity`, `unitPrice`), `deliveryFee`, `taxTotal`, `serviceFee`, optional `discountTotal`, optional `customerNotes`.

## Reviews (`ReviewController`, `/api/Review`)

| Method | Path | Auth |
|--------|------|------|
| `POST` | `/api/Review` | Customer | Body: `SubmitReviewRequest` — `orderId`, `targetType`, `rating`, optional `comment`, optional `images[]` (`imageUrl`, `sortOrder`). |

## Rewards / loyalty (`RewardController`, `/api/Reward`)

| Method | Path | Auth | Notes |
|--------|------|------|--------|
| `GET` | `/api/Reward/loyalty-balance` | Customer | `LoyaltySummaryDto`: `customerId`, `pointsBalance`, `recentTransactions`. |
| `GET` | `/api/Reward/reward-history` | Customer | |
| `POST` | `/api/Reward/spin-wheel` | Customer | Body: `{ "orderId": "<guid>" }` (`SpinWheelRequest`). |

## Driver app (`DriverController`, `/api/driver`)

All routes require the **Driver** policy. Verbs matter: accept/reject use **`POST`**; status transitions after assignment use **`PATCH`**.

See `DeliveryApiPaths` entries `driverProfile`, `driverStatus`, `driverLocation`, `driverOrdersAvailable`, `driverOrdersAssigned`, and `driverOrderAccept` / `driverOrderReject` / `driverOrderPickedUp` / `driverOrderOnTheWay` / `driverOrderDelivered`.

## Restaurant portal (`RestaurantOrdersController`, `RestaurantManagementController`)

Under `/api/restaurant/orders` and `/api/restaurant/management`. Restaurant policy. Accept/reject order actions are **`POST`**; kitchen status is **`PATCH`**. See `DeliveryApiPaths.restaurantOrders*`.

## Admin (`AdminController`, `/api/admin`)

Admin JWT. `GET /api/admin/drivers` lists drivers; restaurant/category/product **creates** are `POST` on the collection path (there is **no** `GET /api/admin/restaurants` list in Delivery.Api—only create/update/delete on that segment).

## Upload (`UploadController`, `/api/upload`)

`POST /api/upload/image`, `multipart/form-data`, fields `file` and `folder` (allowed folder names enforced server-side).

## System

`GET /api/System/health` → `{ "status": "healthy" }`.

---

## `OrderStatus` (domain)

Defined in `Delivery.Domain/Orders/Enums/OrderStatus.cs`. Unless `JsonStringEnumConverter` is enabled, JSON typically uses **numeric** values:

| Value | Enum member |
|------:|-------------|
| 0 | `Pending` |
| 1 | `RestaurantAccepted` |
| 2 | `Preparing` |
| 3 | `ReadyForPickup` |
| 4 | `DriverAssigned` |
| 5 | `PickedUp` |
| 6 | `OnTheWay` |
| 7 | `Delivered` |
| 8 | `Cancelled` |

## Driver vehicle type (`DriverVehicleType`)

`motorcycle`, `car`, `bicycle`, `scooter`, `walking`, `unknown` — used in driver-related DTOs when those endpoints are wired.
