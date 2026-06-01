import 'package:delivery_app/features/checkout/domain/ports/delivery_address_map_selection_port.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:flutter/material.dart';

/// Placeholder until Google Maps (or another provider) is integrated.
final class NoOpDeliveryAddressMapSelectionPort
    implements DeliveryAddressMapSelectionPort {
  const NoOpDeliveryAddressMapSelectionPort();

  @override
  Future<GeoLocation?> pickDeliveryPoint(
    BuildContext context, {
    required GeoLocation initial,
  }) async {
    final messenger = ScaffoldMessenger.maybeOf(context);
    final l10n = AppLocalizations.of(context);
    messenger?.showSnackBar(
      SnackBar(content: Text(l10n.deliveryAddressMapPickerComingSoon)),
    );
    return null;
  }
}
