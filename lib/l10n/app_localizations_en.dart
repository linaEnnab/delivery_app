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
  String get authEmailLabel => 'Email (optional)';

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
}
