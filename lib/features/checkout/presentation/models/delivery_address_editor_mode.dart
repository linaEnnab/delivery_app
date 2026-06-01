/// How [DeliveryAddressPage] titles and initial form seeding behave.
enum DeliveryAddressEditorMode {
  /// New checkout address (empty structural fields, same mock map seed).
  add,

  /// Edit the address held by [checkoutDeliveryAddressProvider].
  edit,
}
