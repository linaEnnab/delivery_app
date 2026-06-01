import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/delivery_address.dart';

/// Saved delivery book + ephemeral checkout draft for **delivery addresses**
/// (map pin + structural fields). Distinct from [UserCurrentLocationRepository].
abstract interface class DeliveryAddressRepository {
  /// Customer address book (future `GET /me/addresses` or equivalent).
  Future<Result<List<DeliveryAddress>>> listSavedAddresses();

  Future<Result<DeliveryAddress>> upsertSavedAddress(DeliveryAddress address);

  Future<Result<void>> deleteSavedAddress(String id);

  /// Checkout session draft before order submission (typically local only).
  Future<Result<DeliveryAddress?>> getCheckoutDraft();

  Future<Result<void>> saveCheckoutDraft(DeliveryAddress draft);

  Future<Result<void>> clearCheckoutDraft();
}
