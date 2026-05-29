# Customer API contracts (ASP.NET Core)

Versioned REST under the app base URL (see `ApiEndpoints`). JSON uses **snake_case** keys to match generated Dart `@JsonEnum(fieldRename: FieldRename.snake)` models.

## Order lifecycle (`OrderStatus`)

| Wire value | Meaning |
|------------|---------|
| `pending` | Created; payment / restaurant acceptance pending. |
| `restaurant_accepted` | Restaurant accepted the order. |
| `preparing` | Kitchen / prep in progress. |
| `ready_for_pickup` | Ready for driver pickup at restaurant. |
| `driver_assigned` | Driver assigned; may not yet be on site. |
| `picked_up` | Driver collected the order from restaurant. |
| `on_the_way` | En route to customer. |
| `delivered` | Completed; reviews eligible. |
| `cancelled` | Terminal cancel. |

**Refunds** are not modeled as an order status. Use `PaymentSession` / `WalletTransaction` (and optional admin-only refund entities) so finance stays orthogonal to fulfillment.

## `GET /orders` and `GET /orders/{id}`

Order payload (customer-visible):

- `restaurant` → `OrderRestaurantDetails`: `id`, `name`, `phone`, `address`, `coordinates` (`latitude`, `longitude`).
- `customer_contact` (optional) → `CustomerDeliveryContact`: `name`, `phone` for the person receiving the delivery.
- `delivery_address` → existing `Address` (includes `apartment`, `floor`, `delivery_instructions`, `location`).
- `driver` (optional) → `DriverSummary`: `id`, `name`, `phone`, `rating`, `vehicle_type` (`DriverVehicleType`).
- `loyalty_points_earned` (optional int): points credited when the order completes (snapshot for receipts).
- `pricing` → `OrderPricing` (see below).

## `GET /orders/{id}/tracking`

Returns `OrderTracking`: `current_status`, `timeline[]` (`status`, `timestamp`, `note`), optional `driver_location`, `estimated_minutes_remaining`.

## Pricing snapshot (`OrderPricing`)

| Concept | JSON / model |
|---------|----------------|
| Subtotal | `subtotal` (`Money`) |
| Delivery fee | `delivery_fee` |
| Discount (non-coupon) | `discount_total` |
| Coupon | `coupon_discount` |
| Tax | `tax_amount` |
| Final total | `grand_total` (alias getters: `finalTotal`, `orderSubtotal`, etc. on client) |
| Platform commission | `commission.platform_commission` |
| Driver earnings | `commission.driver_earnings` |
| Restaurant earnings | `commission.restaurant_earnings` |
| Delivery fee (split view) | `commission.delivery_fee` (mirrors customer line where applicable) |

## Reviews

- `GET /orders/{orderId}/review-eligibility` → `ReviewEligibility`.
- `POST /reviews` body: `OrderReviewSubmission` — `restaurant_rating`, `driver_rating`, `comment`, `review_images[]` where each image is `{ "id"?, "url", "sort_order" }`.

Persisted `Review` rows use `review_images` for the attachment list.

## Loyalty

- `GET /loyalty/balance` → `LoyaltyBalance` (`points`, `lifetime_earned`, `lifetime_redeemed`, `pending_points`).
- `GET /loyalty/history` → `LoyaltyTransaction[]` with `kind` (`LoyaltyTransactionKind`).
- `GET /loyalty/free-delivery-rewards` → `FreeDeliveryReward[]`.
- `POST /loyalty/spin-wheel` → `SpinWheelResult` (may include `loyalty_transaction_id`, nested `free_delivery_reward`).

## Driver vehicle type (`DriverVehicleType`)

`motorcycle`, `car`, `bicycle`, `scooter`, `walking`, `unknown`.
