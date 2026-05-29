/// Parameters for validating a coupon code at checkout.
class ValidateCouponParams {
  const ValidateCouponParams({
    required this.code,
    this.restaurantId,
  });

  final String code;
  final String? restaurantId;
}
