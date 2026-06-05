import 'package:delivery_app/shared/domain/entities/delivery_address.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:uuid/uuid.dart';

/// Static checkout demo payload (replace with repository / API later).
abstract final class MockCheckoutData {
  /// Default Gaza pin used until the user picks a point on a real map.
  static const GeoLocation defaultDeliveryPoint =
      GeoLocation(latitude: 31.5, longitude: 34.47);

  /// Must be a valid GUID — [POST /api/Order] binds `deliveryAddressId` as `System.Guid`.
  static const defaultDeliveryAddressId =
      '44444444-4444-4444-4444-444444444444';

  static final DeliveryAddress deliveryAddress = DeliveryAddress(
    id: defaultDeliveryAddressId,
    label: 'المنزل',
    line1: 'شارع السوق، بجانب صيدلية النور',
    line2: null,
    city: 'غزة',
    area: 'الرمال',
    buildingNumber: '12',
    apartmentNumber: '4',
    floorNumber: '3',
    deliveryNotes: 'يرجى الطرق على الجرس مرتين.',
    deliveryPoint: defaultDeliveryPoint,
    isDeliveryPointConfirmed: true,
    isDefault: true,
  );

  /// Fresh row for “add address”; [city] / [area] are filled at save from UI locale.
  static DeliveryAddress newAddressDraft({
    required String city,
    required String area,
  }) {
    return DeliveryAddress(
      id: const Uuid().v4(),
      label: 'العنوان',
      line1: '',
      line2: null,
      city: city,
      area: area,
      buildingNumber: null,
      apartmentNumber: null,
      floorNumber: null,
      deliveryNotes: null,
      deliveryPoint: defaultDeliveryPoint,
      isDeliveryPointConfirmed: false,
      isDefault: true,
    );
  }
}
