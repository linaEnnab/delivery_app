import 'package:delivery_app/features/checkout/data/no_op_delivery_address_map_selection_port.dart';
import 'package:delivery_app/features/checkout/domain/ports/delivery_address_map_selection_port.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Override with a real map-backed implementation when integrating Google Maps.
final deliveryAddressMapSelectionPortProvider =
    Provider<DeliveryAddressMapSelectionPort>(
  (ref) => const NoOpDeliveryAddressMapSelectionPort(),
);
