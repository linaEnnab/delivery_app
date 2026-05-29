import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String id,
    required String label,
    required String line1,
    String? line2,
    required String city,
    required String area,
    String? building,
    String? floor,
    String? apartment,
    String? deliveryInstructions,
    required GeoLocation location,
    @Default(false) bool isDefault,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
