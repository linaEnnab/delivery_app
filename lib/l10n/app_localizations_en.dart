// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get authAppTitle => 'Delivery';

  @override
  String get authLoginTitle => 'Sign in';

  @override
  String get authLoginSubtitle => 'Enter your details to continue';

  @override
  String get authPhoneLabel => 'Phone number';

  @override
  String get authPhoneHint => '05xxxxxxxx';

  @override
  String get authPasswordLabel => 'Password';

  @override
  String get authPasswordHint => '••••••••';

  @override
  String get authForgotPassword => 'Forgot password?';

  @override
  String get authLoginButton => 'Sign in';

  @override
  String get authNoAccount => 'Don\'t have an account?';

  @override
  String get authRegisterLink => 'Create account';

  @override
  String get authRegisterTitle => 'Create account';

  @override
  String get authRegisterSubtitle => 'Complete your details to get started';

  @override
  String get authFullNameLabel => 'Full name';

  @override
  String get authFullNameHint => 'e.g. John Doe';

  @override
  String get authEmailLabel => 'Email';

  @override
  String get authEmailHint => 'you@example.com';

  @override
  String get authConfirmPasswordLabel => 'Confirm password';

  @override
  String get authRegisterButton => 'Create account';

  @override
  String get authHaveAccount => 'Already have an account?';

  @override
  String get authLoginLink => 'Sign in';

  @override
  String get authForgotTitle => 'Reset password';

  @override
  String get authForgotSubtitle =>
      'Enter your phone number to receive a verification code';

  @override
  String get authSendCodeButton => 'Send code';

  @override
  String get authBack => 'Back';

  @override
  String get authShowPassword => 'Show password';

  @override
  String get authHidePassword => 'Hide password';

  @override
  String get authPhoneRequired => 'Please enter your phone number';

  @override
  String get authPhoneInvalid => 'Phone number is not valid';

  @override
  String get authPasswordRequired => 'Please enter your password';

  @override
  String get authPasswordMin => 'Password must be at least 8 characters';

  @override
  String get authPasswordMismatch => 'Passwords do not match';

  @override
  String get authNameRequired => 'Please enter your full name';

  @override
  String get authEmailInvalid => 'Email is not valid';

  @override
  String get authEmailRequired => 'Please enter your email';

  @override
  String get authLoginFailed => 'Could not sign in. Please try again.';

  @override
  String get authRegisterFailed =>
      'Could not create account. Please try again.';

  @override
  String get authCodeSent => 'Code sent to your phone (demo)';

  @override
  String get authSendCodeFailed => 'Could not send code. Please try again.';

  @override
  String get homeNavHome => 'Home';

  @override
  String get homeNavOrders => 'Orders';

  @override
  String get homeNavRewards => 'Rewards';

  @override
  String get homeNavProfile => 'Profile';

  @override
  String get homeCityLabel => 'Delivering to';

  @override
  String get homeRegionLabel => 'Area';

  @override
  String get homeBrandName => 'Akool';

  @override
  String get homeBrandTagline => 'Fast delivery';

  @override
  String get homeSearchHint => 'Search for a restaurant or meal…';

  @override
  String get homeNotificationsTooltip => 'Notifications';

  @override
  String get homeFeaturedSection => 'Featured restaurants';

  @override
  String get homeNearbySection => 'Nearby restaurants';

  @override
  String get homeViewAll => 'View all';

  @override
  String get homeCategoriesSection => 'Categories';

  @override
  String get homePromosSection => 'Offers & deals';

  @override
  String get homeEmptyRestaurantsHint =>
      'No restaurants are available yet. Check that the server is running and try again.';

  @override
  String get homeRetryRestaurants => 'Retry';

  @override
  String get homeTabOrdersTitle => 'Your orders';

  @override
  String get homeTabOrdersSubtitle => 'Your orders will appear here soon.';

  @override
  String get homeTabRewardsTitle => 'Rewards';

  @override
  String get homeTabRewardsSubtitle =>
      'Points and loyalty offers will show up here.';

  @override
  String get homeTabProfileTitle => 'Profile';

  @override
  String get homeTabProfileSubtitle => 'Profile settings are coming soon.';

  @override
  String get cartTitle => 'Cart';

  @override
  String get cartEmptyTitle => 'Your cart is empty';

  @override
  String get cartEmptySubtitle =>
      'Add items from restaurants to see them here.';

  @override
  String get cartOrderSummaryTitle => 'Order summary';

  @override
  String get cartSubtotal => 'Subtotal';

  @override
  String get cartDeliveryFee => 'Delivery fee';

  @override
  String get cartDiscount => 'Discount';

  @override
  String get cartFinalTotal => 'Total';

  @override
  String get cartCheckout => 'Checkout';

  @override
  String get cartCheckoutComingSoon => 'Checkout will be available soon.';

  @override
  String get cartClearTooltip => 'Clear cart';

  @override
  String get cartClearConfirmTitle => 'Clear cart?';

  @override
  String get cartClearConfirmBody =>
      'All items will be removed from your cart.';

  @override
  String get cartClearConfirmAction => 'Clear';

  @override
  String get cartClearCancel => 'Cancel';

  @override
  String get cartClearedSnackbar => 'Cart cleared';

  @override
  String get cartRemoveItemTooltip => 'Remove item';

  @override
  String get cartErrorDifferentRestaurant =>
      'Your cart has items from another restaurant. Clear the cart to add items from this one.';

  @override
  String get cartUnexpectedError =>
      'Could not update the cart. Please try again.';

  @override
  String get restaurantViewCart => 'View cart';

  @override
  String restaurantCartUnits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String get checkoutTitle => 'Checkout';

  @override
  String get checkoutDeliverySection => 'Delivery address';

  @override
  String get checkoutCityLabel => 'City';

  @override
  String get checkoutStreetLabel => 'Address';

  @override
  String get checkoutAddEditAddress => 'Add / edit address';

  @override
  String get checkoutAddressDetailsTitle => 'Address details';

  @override
  String get checkoutBuildingNumber => 'Building number';

  @override
  String get checkoutApartmentNumber => 'Apartment number';

  @override
  String get checkoutFloorNumber => 'Floor number';

  @override
  String get checkoutDeliveryNotes => 'Delivery notes';

  @override
  String get checkoutPaymentTitle => 'Payment method';

  @override
  String get checkoutPaymentCod => 'Cash on delivery';

  @override
  String get checkoutPaymentCard => 'Card';

  @override
  String get checkoutPaymentCardPlaceholder => 'Coming soon';

  @override
  String get checkoutPlaceOrder => 'Place order';

  @override
  String get checkoutSubmitOrder => 'Submit order';

  @override
  String get checkoutRewardAppliedBadge => 'Reward';

  @override
  String get checkoutRewardWinHeadline => 'You won!';

  @override
  String get checkoutRewardWheelTitle => 'Reward wheel';

  @override
  String get checkoutRewardWheelSubtitle =>
      'Spin once before you submit. Prizes apply to this order in the demo.';

  @override
  String get checkoutRewardLoyaltySummaryLabel => 'Loyalty bonus';

  @override
  String checkoutRewardLoyaltySummaryValue(int points) {
    return '+$points pts';
  }

  @override
  String get checkoutPlaceOrderDemo => 'Your order was received (demo).';

  @override
  String get checkoutPlaceOrderFailed =>
      'Could not place your order. Please try again.';

  @override
  String get checkoutEmptyCartTitle => 'Cart is empty';

  @override
  String get checkoutEmptyCartSubtitle => 'Add items before checking out.';

  @override
  String get deliveryAddressTitleAdd => 'Add address';

  @override
  String get deliveryAddressTitleEdit => 'Edit address';

  @override
  String get deliveryAddressDetectedCityLabel => 'Detected city';

  @override
  String get deliveryAddressDetectedAreaLabel => 'Detected area';

  @override
  String get deliveryAddressFullAddressLabel => 'Full delivery address';

  @override
  String get deliveryAddressFullAddressHint => 'Street, nearest landmark…';

  @override
  String get deliveryAddressChooseOnMap => 'Choose on map';

  @override
  String get deliveryAddressMapSectionHint =>
      'The pin will be used later for time and fee estimates.';

  @override
  String get deliveryAddressMapPickerComingSoon =>
      'The map picker will open when Google Maps is connected.';

  @override
  String get deliveryAddressPinConfirmedLabel => 'Delivery point confirmed';

  @override
  String get deliveryAddressSave => 'Save address';

  @override
  String get deliveryAddressStreetRequired =>
      'Please enter the full delivery address.';

  @override
  String get deliveryAddressSnackbarSaved => 'Address saved';

  @override
  String get deliveryAddressDemoCityValue => 'Gaza';

  @override
  String get deliveryAddressDemoAreaValue => 'Al-Rimal';

  @override
  String get orderSuccessHeadline => 'Your order is confirmed!';

  @override
  String get orderSuccessIconSemantics => 'Success: order confirmed';

  @override
  String get orderSuccessOrderNumberLabel => 'Order number';

  @override
  String get orderSuccessRestaurantLabel => 'Restaurant';

  @override
  String get orderSuccessEtaLabel => 'Estimated delivery';

  @override
  String orderSuccessEtaRange(int min, int max) {
    return '$min–$max min';
  }

  @override
  String get orderSuccessTrackOrder => 'Track order';

  @override
  String get orderSuccessBackHome => 'Back to home';

  @override
  String get orderSuccessTrackSnackbar =>
      'Order tracking will be available soon.';

  @override
  String get myOrdersHeadline => 'My orders';

  @override
  String get myOrdersActiveSection => 'Active orders';

  @override
  String get myOrdersCompletedSection => 'Completed orders';

  @override
  String get myOrdersEmptyActive => 'You have no active orders right now.';

  @override
  String get myOrdersEmptyCompleted => 'No completed orders yet.';

  @override
  String get myOrdersTapToTrackSemantics => 'Track order';

  @override
  String get myOrdersFieldStatus => 'Status';

  @override
  String get myOrdersFieldTotal => 'Order total';

  @override
  String get myOrdersFieldDate => 'Date';

  @override
  String get orderStatusPending => 'Pending';

  @override
  String get orderStatusRestaurantAccepted => 'Restaurant accepted';

  @override
  String get orderStatusPreparing => 'Preparing';

  @override
  String get orderStatusReadyForPickup => 'Ready for pickup';

  @override
  String get orderStatusDriverAssigned => 'Driver assigned';

  @override
  String get orderStatusPickedUp => 'Picked up';

  @override
  String get orderStatusOnTheWay => 'On the way';

  @override
  String get orderStatusDelivered => 'Delivered';

  @override
  String get orderStatusCancelled => 'Cancelled';

  @override
  String get orderTrackingTitle => 'Order tracking';

  @override
  String get orderTrackingTimelineTitle => 'Order status';

  @override
  String get orderTrackingDriverLabel => 'Driver';

  @override
  String get orderTrackingRatingLabel => 'Rating';

  @override
  String get orderTrackingEtaLabel => 'Estimated arrival';

  @override
  String get orderTrackingDriverNotAssigned => 'Not assigned yet';

  @override
  String get orderTrackingMapTitle => 'Map';

  @override
  String get orderTrackingMapBody =>
      'Live map preview will appear when Google Maps is connected.';

  @override
  String get orderTrackingUnknownOrder => 'We could not find this order.';

  @override
  String get orderTrackingDemoHint =>
      'Demo view — live tracking will connect here later.';

  @override
  String get orderTrackingCancelledHeadline => 'This order was cancelled.';

  @override
  String get orderTrackingRateOrder => 'Rate order';

  @override
  String get orderReviewTitle => 'Rate your order';

  @override
  String get orderReviewSummaryTitle => 'Order summary';

  @override
  String get orderReviewRestaurantRating => 'Restaurant rating';

  @override
  String get orderReviewDriverRating => 'Driver rating';

  @override
  String get orderReviewCommentLabel => 'Your comment (optional)';

  @override
  String get orderReviewCommentHint => 'How was your experience?';

  @override
  String get orderReviewAddImages => 'Add photos';

  @override
  String get orderReviewImagesSectionHint =>
      'Placeholder preview — real uploads will be enabled later.';

  @override
  String get orderReviewRemoveImageSemantics => 'Remove photo';

  @override
  String get orderReviewImagePreviewSemantics => 'Review photo preview';

  @override
  String get orderReviewSubmit => 'Submit review';

  @override
  String get orderReviewSubmittedSnackbar => 'Thanks for your feedback!';

  @override
  String get orderReviewNotDeliveredBody =>
      'Reviews are only available after delivery is completed.';

  @override
  String get orderReviewAlreadySubmittedBody =>
      'A review has already been submitted for this order.';

  @override
  String get orderReviewUnknownOrderBody => 'We could not find this order.';

  @override
  String get orderReviewBack => 'Back';

  @override
  String get orderReviewSelectBothRatingsHint =>
      'Please rate both the restaurant and the driver.';

  @override
  String orderReviewMaxImagesSnackbar(int max) {
    return 'You can attach up to $max photos.';
  }

  @override
  String get orderReviewMockImageAddedSnackbar => 'Photo added (demo preview).';

  @override
  String orderReviewSetStarSemantics(int rating) {
    return 'Set rating to $rating out of 5';
  }

  @override
  String get rewardsHeadline => 'Loyalty & rewards';

  @override
  String get rewardsCurrentPointsSection => 'Your points';

  @override
  String get rewardsTotalPointsLabel => 'Total points';

  @override
  String get rewardsPointsNeededForNextLabel => 'Points to next reward';

  @override
  String get rewardsAvailableSection => 'Available rewards';

  @override
  String get rewardsRewardFreeDelivery => 'Free delivery';

  @override
  String get rewardsRewardDiscount10 => '10% discount';

  @override
  String get rewardsRewardDiscount20 => '20% discount';

  @override
  String get rewardsRewardFreeFries => 'Free fries';

  @override
  String get rewardsRewardFreeDrink => 'Free drink';

  @override
  String get rewardsRewardFreeSauce => 'Free sauce';

  @override
  String get rewardsHistorySection => 'Reward history';

  @override
  String get rewardsEarnedSection => 'Earned points';

  @override
  String get rewardsRedeemedSection => 'Redeemed rewards';

  @override
  String rewardsHistoryPointsEarned(String points) {
    return '+$points';
  }

  @override
  String rewardsHistoryEarnedOrder(String orderRef) {
    return 'Completed order · $orderRef';
  }

  @override
  String get rewardsHistoryEarnedReview => 'Review bonus';

  @override
  String get rewardsHistoryEarnedReferral => 'Referral bonus';

  @override
  String get rewardsHistoryRedeemedFreeDelivery => 'Free delivery';

  @override
  String get rewardsHistoryRedeemedDiscount10 => '10% discount';

  @override
  String get rewardsHistoryRedeemedDiscount20 => '20% discount';

  @override
  String get rewardsHistoryRedeemedFreeFries => 'Free fries';

  @override
  String get rewardsHistoryRedeemedFreeDrink => 'Free drink';

  @override
  String get rewardsHistoryRedeemedFreeSauce => 'Free sauce';

  @override
  String get rewardsSpinSection => 'Spin wheel';

  @override
  String get rewardsSpinEligibilityLabel => 'Current eligibility';

  @override
  String get rewardsSpinEligible => 'You can spin the wheel';

  @override
  String get rewardsSpinNotEligible => 'Not enough points yet';

  @override
  String get rewardsSpinRequiredLabel => 'Points required per spin';

  @override
  String rewardsSpinRequiredValue(String points) {
    return '$points';
  }

  @override
  String get rewardsSpinButton => 'Spin the wheel';

  @override
  String get rewardsSpinComingSoonSnackbar =>
      'Spin wheel will be enabled soon.';

  @override
  String rewardsSpinDisabledHint(String points) {
    return 'Reach $points points to unlock a spin';
  }

  @override
  String get rewardsPointsShortUnit => 'pts';

  @override
  String get rewardsCheckoutWheelTitle => 'Checkout reward wheel';

  @override
  String get rewardsCheckoutWheelBody =>
      'At checkout, tap Place order to spin once and apply a prize to this basket (demo).';

  @override
  String get rewardsCheckoutWheelBodyEmptyCart =>
      'Add items to your cart, open checkout, then spin before you submit.';

  @override
  String get rewardsCheckoutWheelOpenCheckout => 'Open checkout';

  @override
  String get rewardWheelScreenTitle => 'Reward wheel';

  @override
  String get rewardWheelScreenSubtitle =>
      'Spin happens at checkout before you submit. Open your cart, go to checkout, tap Place order, then claim your prize (demo).';

  @override
  String get rewardWheelGoToCartCta => 'Go to cart';

  @override
  String get rewardWheelSpinButton => 'Spin the wheel';

  @override
  String get rewardWheelNoSpinsTitle => 'No spins available';

  @override
  String get rewardWheelNoSpinsBody =>
      'When an order is delivered, you will see the spin action here and on order tracking.';

  @override
  String get rewardWheelUnknownOrderTitle => 'Order not found';

  @override
  String get rewardWheelUnknownOrderBody =>
      'This order could not be found in the demo data.';

  @override
  String get rewardWheelAlreadyUsedTitle => 'Spin already used';

  @override
  String rewardWheelAlreadyUsedBody(String orderNumber) {
    return 'You already used the post-delivery wheel for order $orderNumber.';
  }

  @override
  String rewardWheelForOrderLabel(String orderNumber) {
    return 'Order $orderNumber';
  }

  @override
  String get rewardWheelHistoryTitle => 'Wheel reward history';

  @override
  String get rewardWheelHistoryEmpty => 'Your wheel wins will appear here.';

  @override
  String rewardWheelHistoryOrderLine(String orderNumber) {
    return 'Order $orderNumber';
  }

  @override
  String get rewardWheelHistoryCheckoutOrderLine => 'Current order (checkout)';

  @override
  String get rewardWheelHistoryClaimedBadge => 'Claimed';

  @override
  String get rewardWheelHistorySavedBadge => 'Saved to account';

  @override
  String get rewardWheelCelebrationBarrierLabel => 'Dismiss';

  @override
  String get rewardWheelCelebrationHeadline => 'Congratulations!';

  @override
  String get rewardWheelClaimButton => 'Claim reward';

  @override
  String get rewardWheelContinueButton => 'Continue';

  @override
  String get rewardWheelPrizeFreeColaTitle => 'Free cola';

  @override
  String get rewardWheelPrizeFreeColaDescription =>
      'We add a cola drink to this order at no charge (demo).';

  @override
  String get rewardWheelPrizeFreeFriesTitle => 'Free fries';

  @override
  String get rewardWheelPrizeFreeFriesDescription =>
      'We add fries to this order at no charge (demo).';

  @override
  String get rewardWheelPrizeMealDiscount50Title => '50% off this order';

  @override
  String get rewardWheelPrizeMealDiscount50Description =>
      'Half off your food subtotal for this checkout (demo).';

  @override
  String get rewardWheelPrizeFreeDeliveryTitle => 'Free delivery';

  @override
  String get rewardWheelPrizeFreeDeliveryDescription =>
      'Delivery fee is waived for this order (demo).';

  @override
  String get rewardWheelPrizeLoyalty25Title => '25 loyalty points';

  @override
  String get rewardWheelPrizeLoyalty25Description =>
      'Bonus points for your rewards balance (mock).';

  @override
  String get rewardWheelPrizeLoyalty50Title => '50 loyalty points';

  @override
  String get rewardWheelPrizeLoyalty50Description =>
      'A bigger bonus toward your next reward (mock).';
}
