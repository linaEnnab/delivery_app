# Location architecture

Two **separate** location concepts drive different parts of the customer app. They must not be conflated in UI or persistence.

## 1. User current location (browsing)

| Aspect | Detail |
|--------|--------|
| **Purpose** | Nearby restaurants, city/area context for discovery. |
| **Source** | Device GPS / fused location; optional reverse geocode for labels. |
| **Persistence** | On-device only (`UserCurrentLocationRepository`). |
| **Domain model** | [`UserCurrentLocation`](../lib/shared/domain/entities/user_current_location.dart) |
| **Repository** | [`UserCurrentLocationRepository`](../lib/features/location/domain/repositories/user_current_location_repository.dart) |

## 2. Delivery address (checkout / fulfillment)

| Aspect | Detail |
|--------|--------|
| **Purpose** | Checkout and order fulfillment: pin, structural details, notes. |
| **Source** | User-selected map point + confirmation + optional manual edits. |
| **Persistence** | Address book + checkout draft (`DeliveryAddressRepository`); orders embed a snapshot as `delivery_address` (see [API_CONTRACTS.md](./API_CONTRACTS.md)). |
| **Domain model** | [`DeliveryAddress`](../lib/shared/domain/entities/delivery_address.dart) |
| **Repository** | [`DeliveryAddressRepository`](../lib/features/location/domain/repositories/delivery_address_repository.dart) |

Structural fields on `DeliveryAddress`: building number, apartment number, floor number, delivery notes (wire: `building`, `apartment`, `floor`, `delivery_instructions`). Coordinates live on `deliveryPoint` (wire: `location`). `isDeliveryPointConfirmed` is the client flag that the user locked the pin (optional on wire for backward compatibility).

## 3. Future backend geo capabilities

Distance, driver routing, restaurant proximity, and delivery-fee quotes are modeled as a **single** server-facing contract so they can share one maps/pricing integration:

- [`LocationGeospatialRepository`](../lib/features/location/domain/repositories/location_geospatial_repository.dart)

Return types include [`RouteEstimate`](../lib/shared/domain/value_objects/route_estimate.dart) (meters + duration) and existing [`Money`](./DOMAIN_MODELS.md) for fees.

## Barrel export

- [`lib/features/location/location.dart`](../lib/features/location/location.dart) — repository contracts only (no UI).
