# Domain model planning

Maps the **customer** Flutter app to future **SQL Server** / **ASP.NET Core** aggregates and JSON contracts. See [API_CONTRACTS.md](./API_CONTRACTS.md) for wire details.

## Order lifecycle

```
pending → restaurant_accepted → preparing → ready_for_pickup → driver_assigned
    → picked_up → on_the_way → delivered
```

Terminal: `cancelled`. Refunds are modeled via payments/wallet, not as `OrderStatus`.

## Core aggregates

### User & auth

- `UserProfile` — customer identity, loyalty balance snapshot
- `AuthTokens` — JWT access/refresh (secure storage)

### Discovery

- `RestaurantSummary` — listing card (delivery fee, optional ETA range `estimatedDeliveryMinutesMax` for UI copy like «25–40 د»)
- `Product` + `ProductOptionGroup` — menu item with modifiers
- `Category` — API-driven browse

### Commerce

- `Cart` / `CartItem` — single-restaurant cart rule (enforced at API)
- `Order` — fulfillment + participants:
  - `OrderRestaurantDetails` (id, name, phone, address, coordinates)
  - `CustomerDeliveryContact?` (recipient name/phone)
  - `DriverSummary?` (id, name, phone, rating, `DriverVehicleType`)
  - `DeliveryAddress deliveryAddress` (line1, city, apartment, floor, delivery notes, `GeoLocation` pin; distinct from browsing `UserCurrentLocation`)
  - `loyaltyPointsEarned` snapshot when settled
- `OrderStatus` — marketplace lifecycle enum
- `OrderPricing` — checkout and persisted snapshot; getters alias finance vocabulary (`finalTotal`, `driverEarnings`, …)
- `Coupon` / `CustomerCoupon` / `Promotion` — campaigns vs codes

### Financial / accounting

`CommissionBreakdown`: platform fee, restaurant net, driver earnings, delivery fee, discount absorption, tax.

### Payments & wallet

- `PaymentSession` — PSP session
- `WalletBalance` / `WalletTransaction` — stored value

### Media

- `PresignedUpload` — `MediaUploadPurpose.reviewImage`, etc.

### Reviews (post-delivery)

- `ReviewEligibility`
- `OrderReviewSubmission` — dual ratings + `List<ReviewImage>` (`id`, `url`, `sort_order`)
- `Review` — persisted per `ReviewTargetType`

### Loyalty & gamification

- `LoyaltyBalance` — includes optional `pendingPoints`
- `LoyaltyTransaction` — `LoyaltyTransactionKind` (earn, redeem, spin wheel, free delivery grant/consumed, …)
- `FreeDeliveryReward` — grant lifecycle for free-delivery perks
- `Reward` — catalog
- `SpinWheelResult` — may link `loyaltyTransactionId` and embed `FreeDeliveryReward`

### Fulfillment views

- `OrderTracking` — timeline + optional driver map location

### Notifications

- `NotificationItem` — deep links

## API endpoint alignment

Canonical HTTP paths for `Delivery.Api` live in `lib/core/constants/delivery_api_paths.dart` (`DeliveryApiPaths`). `lib/core/network/api_endpoints.dart` re-exports that library for convenience.

## Enum reference

| Enum | Location |
|------|----------|
| `OrderStatus` | `shared/domain/enums/order_status.dart` |
| `DriverVehicleType` | `shared/domain/enums/driver_vehicle_type.dart` |
| `LoyaltyTransactionKind` | `shared/domain/enums/loyalty_transaction_kind.dart` |
| `ReviewTargetType` | `shared/domain/enums/review_target_type.dart` |
| `RewardType` | `shared/domain/enums/reward_type.dart` |
| `DiscountType` | `shared/domain/enums/discount_type.dart` |
| `PaymentMethod` | `shared/domain/enums/payment_method.dart` |
| `PromotionScope` | `shared/domain/enums/promotion_scope.dart` |
| `PaymentSessionStatus` | `shared/domain/enums/payment_session_status.dart` |
| `MediaUploadPurpose` | `shared/domain/enums/media_upload_purpose.dart` |
| `LocationFixSource` | `shared/domain/enums/location_fix_source.dart` |

## Suggested SQL tables (future backend)

- `Customers`, `CustomerAddresses`
- `Restaurants`, `MenuCategories`, `Products`, `ProductOptionGroups`
- `Orders`, `OrderItems`, `OrderStatusHistory`
- `OrderRestaurantSnapshots` (or columns on `Orders`), `OrderDriverAssignments`
- `OrderPricingSnapshots`, `CommissionLedgerEntries`
- `Coupons`, `Promotions`, `CustomerCoupons`
- `Reviews`, `ReviewImages`
- `LoyaltyAccounts`, `LoyaltyTransactions`, `FreeDeliveryRewards`, `Rewards`, `RewardRedemptions`, `SpinWheelEvents`
- `PaymentSessions`, `WalletAccounts`, `WalletTransactions`, `MediaAssets`
- `Drivers` (referenced from assignments / tracking)
- `Notifications`

## Location (two concepts)

- `UserCurrentLocation` — GPS browsing snapshot; city/area for discovery; local-only (see [LOCATION_ARCHITECTURE.md](./LOCATION_ARCHITECTURE.md))
- `DeliveryAddress` — checkout map pin + building/apartment/floor/notes; order snapshot

## Value objects

- `Money` — amount + `currencyCode` (default AED)
- `GeoLocation` — lat/lng
- `RouteEstimate` — distance + travel duration (maps / routing provider)
