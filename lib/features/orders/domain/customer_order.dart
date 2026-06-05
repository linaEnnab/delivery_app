import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/enums/order_status.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:equatable/equatable.dart';

export 'package:delivery_app/shared/domain/enums/order_status.dart' show OrderStatus;

extension CustomerOrderStatusX on OrderStatus {
  /// Localized label — Arabic-first via [AppLocalizations].
  String label(AppLocalizations l10n) => switch (this) {
        OrderStatus.pending => l10n.orderStatusPending,
        OrderStatus.restaurantAccepted => l10n.orderStatusRestaurantAccepted,
        OrderStatus.preparing => l10n.orderStatusPreparing,
        OrderStatus.readyForPickup => l10n.orderStatusReadyForPickup,
        OrderStatus.driverAssigned => l10n.orderStatusDriverAssigned,
        OrderStatus.pickedUp => l10n.orderStatusPickedUp,
        OrderStatus.onTheWay => l10n.orderStatusOnTheWay,
        OrderStatus.delivered => l10n.orderStatusDelivered,
        OrderStatus.cancelled => l10n.orderStatusCancelled,
      };

  bool get isActiveCustomerView => !isTerminal;

  /// Linear index on the happy-path timeline (excludes [cancelled]).
  int? get trackingTimelineStepIndex => switch (this) {
        OrderStatus.pending => 0,
        OrderStatus.restaurantAccepted => 1,
        OrderStatus.preparing => 2,
        OrderStatus.readyForPickup => 3,
        OrderStatus.driverAssigned => 4,
        OrderStatus.pickedUp => 5,
        OrderStatus.onTheWay => 6,
        OrderStatus.delivered => 7,
        OrderStatus.cancelled => null,
      };
}

/// Summary row for My Orders and navigation to tracking (mock).
class CustomerOrder extends Equatable {
  const CustomerOrder({
    required this.id,
    required this.orderNumber,
    required this.restaurantName,
    required this.status,
    required this.total,
    required this.placedAt,
    required this.estimatedArrivalAt,
    this.restaurantId = '',
    this.driverName = '',
    this.driverRating,
  });

  final String id;
  final String orderNumber;

  /// Branch id from API; used to resolve [restaurantName] when empty.
  final String restaurantId;
  final String restaurantName;
  final OrderStatus status;
  final Money total;
  final DateTime placedAt;

  /// Mock / future API: expected handoff time at the customer.
  final DateTime estimatedArrivalAt;

  /// Mock courier display name; empty before assignment.
  final String driverName;

  /// Mock average rating when [driverName] is set.
  final double? driverRating;

  @override
  List<Object?> get props => [
        id,
        orderNumber,
        restaurantId,
        restaurantName,
        status,
        total,
        placedAt,
        estimatedArrivalAt,
        driverName,
        driverRating,
      ];
}
