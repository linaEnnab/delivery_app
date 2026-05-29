# Delivery Customer App — Architecture

Production-ready **customer-only** Flutter app for a multi-restaurant marketplace (Talabat-style). Built for future integration with ASP.NET Core Web API and SQL Server.

## Layer Overview

```
┌─────────────────────────────────────────────────────────────┐
│  Presentation (Riverpod providers — no screens in foundation) │
├─────────────────────────────────────────────────────────────┤
│  Domain (entities, repository contracts, use cases)           │
├─────────────────────────────────────────────────────────────┤
│  Data (remote datasources, DTOs, repository implementations)  │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
                    ASP.NET Core Web API
```

## Folder Structure

```
lib/
├── main.dart                 # Entry → bootstrap
├── bootstrap.dart            # Env, DI, runApp
├── app.dart                  # MaterialApp.router + theme
├── core/
│   ├── config/env/           # Flavors & dotenv
│   ├── constants/
│   ├── di/                   # Provider overrides
│   ├── errors/               # Exceptions & Failures
│   ├── network/              # Dio, interceptors, endpoints
│   ├── router/               # GoRouter paths & config
│   ├── theme/                # Material 3 light/dark
│   ├── responsive/           # Breakpoints & layout helpers
│   ├── storage/              # Secure token storage
│   ├── usecases/             # Base UseCase contracts
│   └── utils/                # Result<T> alias
├── shared/
│   ├── domain/               # Cross-feature entities & enums
│   └── data/models/          # Shared DTOs (e.g. MoneyDto)
└── features/                 # One folder per feature
    └── <feature>/
        ├── <feature>.dart    # Barrel export
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        ├── data/
        │   ├── datasources/
        │   ├── models/
        │   └── repositories/
        └── presentation/
            └── providers/
```

## Features (21)

| Feature | Responsibility |
|---------|----------------|
| `auth` | Login, register, session, token refresh |
| `home` | Feed, banners, promotions |
| `restaurant` | Listing & restaurant details |
| `product` | Product details & options |
| `categories` | Category browse |
| `search` | Restaurant/product search |
| `cart` | Cart CRUD |
| `checkout` | Preview pricing, place order |
| `orders` | Order history & details |
| `order_tracking` | Live driver location & timeline |
| `notifications` | In-app notification inbox |
| `profile` | User profile & addresses |
| `reviews` | Post-delivery restaurant/driver reviews |
| `loyalty` | Points balance & loyalty transaction history |
| `rewards` | Rewards catalog & redemption (points → reward) |
| `spin_wheel` | Spin availability & spin outcome |
| `payments` | PSP payment session create & status |
| `promotions` | Marketing promotions (structured campaigns) |
| `coupons` | Saved customer coupons & validate at checkout |
| `wallet` | Stored-value wallet balance & ledger |
| `media_upload` | Presigned upload requests & completion |

## Stack

| Concern | Package |
|---------|---------|
| State | `flutter_riverpod`, `riverpod_annotation` |
| Routing | `go_router` |
| HTTP | `dio` |
| Models | `freezed`, `json_serializable` |
| FP helpers | `fpdart` |
| Env | `flutter_dotenv` |
| Storage | `flutter_secure_storage`, `shared_preferences` |

## Business Rules (foundation)

- **Reviews**: Only when `OrderStatus.delivered` and not already submitted (`SubmitOrderReviewUseCase`).
- **Loyalty**: Points earned on completed orders; ledger via `LoyaltyRepository` (`LoyaltyTransactionKind`); free-delivery grants via `getFreeDeliveryRewards`; redeem catalog via `RewardsRepository`; spin via `SpinWheelRepository`.
- **Pricing**: `OrderPricing` + `CommissionBreakdown` model platform commission, driver earnings, delivery fee, and discount absorption for future accounting (see `OrderPricing` snapshot getters).
- **Fulfillment**: `OrderStatus` includes `restaurant_accepted`, `driver_assigned`, and related states for restaurant and driver apps when they join the ecosystem.

## Domain & API contracts

- Field-level JSON mapping for the future ASP.NET Core API: [docs/API_CONTRACTS.md](API_CONTRACTS.md).
- Aggregate planning and SQL sketch: [docs/DOMAIN_MODELS.md](DOMAIN_MODELS.md).

| Enum | Location |
|------|----------|
| `OrderStatus` | `lib/shared/domain/enums/order_status.dart` |
| `DriverVehicleType` | `lib/shared/domain/enums/driver_vehicle_type.dart` |
| `LoyaltyTransactionKind` | `lib/shared/domain/enums/loyalty_transaction_kind.dart` |
| `ReviewTargetType` | `lib/shared/domain/enums/review_target_type.dart` |
| `RewardType` | `lib/shared/domain/enums/reward_type.dart` |
| `DiscountType` | `lib/shared/domain/enums/discount_type.dart` |
| `PaymentMethod` | `lib/shared/domain/enums/payment_method.dart` |
| `PromotionScope` | `lib/shared/domain/enums/promotion_scope.dart` |
| `PaymentSessionStatus` | `lib/shared/domain/enums/payment_session_status.dart` |
| `MediaUploadPurpose` | `lib/shared/domain/enums/media_upload_purpose.dart` |

## Code Generation

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Environments

| Flavor | Asset |
|--------|-------|
| development | `assets/env/.env.development` |
| staging | `assets/env/.env.staging` |
| production | `assets/env/.env.production` |

Switch flavor in `main.dart` via `bootstrap(flavor: AppFlavor.staging)`.

## Next Steps (separate projects)

- Driver App (Flutter)
- Restaurant Dashboard
- Admin Dashboard
- ASP.NET Core Web API
- SQL Server
