import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @authAppTitle.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get authAppTitle;

  /// No description provided for @authLoginTitle.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get authLoginTitle;

  /// No description provided for @authLoginSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بياناتك للمتابعة'**
  String get authLoginSubtitle;

  /// No description provided for @authPhoneLabel.
  ///
  /// In ar, this message translates to:
  /// **'رقم الجوال'**
  String get authPhoneLabel;

  /// No description provided for @authPhoneHint.
  ///
  /// In ar, this message translates to:
  /// **'05xxxxxxxx'**
  String get authPhoneHint;

  /// No description provided for @authPasswordLabel.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get authPasswordLabel;

  /// No description provided for @authPasswordHint.
  ///
  /// In ar, this message translates to:
  /// **'••••••••'**
  String get authPasswordHint;

  /// No description provided for @authForgotPassword.
  ///
  /// In ar, this message translates to:
  /// **'نسيت كلمة المرور؟'**
  String get authForgotPassword;

  /// No description provided for @authLoginButton.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get authLoginButton;

  /// No description provided for @authNoAccount.
  ///
  /// In ar, this message translates to:
  /// **'ليس لديك حساب؟'**
  String get authNoAccount;

  /// No description provided for @authRegisterLink.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get authRegisterLink;

  /// No description provided for @authRegisterTitle.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get authRegisterTitle;

  /// No description provided for @authRegisterSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'أكمل بياناتك للبدء'**
  String get authRegisterSubtitle;

  /// No description provided for @authFullNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'الاسم الكامل'**
  String get authFullNameLabel;

  /// No description provided for @authFullNameHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: أحمد محمد'**
  String get authFullNameHint;

  /// No description provided for @authEmailLabel.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني (اختياري)'**
  String get authEmailLabel;

  /// No description provided for @authEmailHint.
  ///
  /// In ar, this message translates to:
  /// **'you@example.com'**
  String get authEmailHint;

  /// No description provided for @authConfirmPasswordLabel.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get authConfirmPasswordLabel;

  /// No description provided for @authRegisterButton.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء الحساب'**
  String get authRegisterButton;

  /// No description provided for @authHaveAccount.
  ///
  /// In ar, this message translates to:
  /// **'لديك حساب بالفعل؟'**
  String get authHaveAccount;

  /// No description provided for @authLoginLink.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get authLoginLink;

  /// No description provided for @authForgotTitle.
  ///
  /// In ar, this message translates to:
  /// **'استعادة كلمة المرور'**
  String get authForgotTitle;

  /// No description provided for @authForgotSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رقم جوالك لإرسال رمز التحقق'**
  String get authForgotSubtitle;

  /// No description provided for @authSendCodeButton.
  ///
  /// In ar, this message translates to:
  /// **'إرسال الرمز'**
  String get authSendCodeButton;

  /// No description provided for @authBack.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get authBack;

  /// No description provided for @authShowPassword.
  ///
  /// In ar, this message translates to:
  /// **'إظهار كلمة المرور'**
  String get authShowPassword;

  /// No description provided for @authHidePassword.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء كلمة المرور'**
  String get authHidePassword;

  /// No description provided for @authPhoneRequired.
  ///
  /// In ar, this message translates to:
  /// **'يرجى إدخال رقم الجوال'**
  String get authPhoneRequired;

  /// No description provided for @authPhoneInvalid.
  ///
  /// In ar, this message translates to:
  /// **'رقم الجوال غير صالح'**
  String get authPhoneInvalid;

  /// No description provided for @authPasswordRequired.
  ///
  /// In ar, this message translates to:
  /// **'يرجى إدخال كلمة المرور'**
  String get authPasswordRequired;

  /// No description provided for @authPasswordMin.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور يجب أن تكون 8 أحرف على الأقل'**
  String get authPasswordMin;

  /// No description provided for @authPasswordMismatch.
  ///
  /// In ar, this message translates to:
  /// **'كلمتا المرور غير متطابقتين'**
  String get authPasswordMismatch;

  /// No description provided for @authNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'يرجى إدخال الاسم الكامل'**
  String get authNameRequired;

  /// No description provided for @authEmailInvalid.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني غير صالح'**
  String get authEmailInvalid;

  /// No description provided for @authLoginFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تسجيل الدخول. حاول مرة أخرى.'**
  String get authLoginFailed;

  /// No description provided for @authRegisterFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر إنشاء الحساب. حاول مرة أخرى.'**
  String get authRegisterFailed;

  /// No description provided for @authCodeSent.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال الرمز إلى جوالك (تجريبي)'**
  String get authCodeSent;

  /// No description provided for @authSendCodeFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر إرسال الرمز. حاول مرة أخرى.'**
  String get authSendCodeFailed;

  /// No description provided for @homeNavHome.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get homeNavHome;

  /// No description provided for @homeNavOrders.
  ///
  /// In ar, this message translates to:
  /// **'الطلبات'**
  String get homeNavOrders;

  /// No description provided for @homeNavRewards.
  ///
  /// In ar, this message translates to:
  /// **'المكافآت'**
  String get homeNavRewards;

  /// No description provided for @homeNavProfile.
  ///
  /// In ar, this message translates to:
  /// **'حسابي'**
  String get homeNavProfile;

  /// No description provided for @homeCityLabel.
  ///
  /// In ar, this message translates to:
  /// **'التوصيل إلى'**
  String get homeCityLabel;

  /// No description provided for @homeRegionLabel.
  ///
  /// In ar, this message translates to:
  /// **'المنطقة'**
  String get homeRegionLabel;

  /// No description provided for @homeBrandName.
  ///
  /// In ar, this message translates to:
  /// **'اكوول'**
  String get homeBrandName;

  /// No description provided for @homeBrandTagline.
  ///
  /// In ar, this message translates to:
  /// **'للتوصيل السريع'**
  String get homeBrandTagline;

  /// No description provided for @homeSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث عن مطعم أو وجبة…'**
  String get homeSearchHint;

  /// No description provided for @homeNotificationsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات'**
  String get homeNotificationsTooltip;

  /// No description provided for @homeFeaturedSection.
  ///
  /// In ar, this message translates to:
  /// **'مطاعم مميزة'**
  String get homeFeaturedSection;

  /// No description provided for @homeNearbySection.
  ///
  /// In ar, this message translates to:
  /// **'المطاعم القريبة'**
  String get homeNearbySection;

  /// No description provided for @homeViewAll.
  ///
  /// In ar, this message translates to:
  /// **'عرض الكل'**
  String get homeViewAll;

  /// No description provided for @homeCategoriesSection.
  ///
  /// In ar, this message translates to:
  /// **'التصنيفات'**
  String get homeCategoriesSection;

  /// No description provided for @homePromosSection.
  ///
  /// In ar, this message translates to:
  /// **'عروض وخصومات'**
  String get homePromosSection;

  /// No description provided for @homeEmptyRestaurantsHint.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مطاعم حالياً. تأكد أن الخادم يعمل ثم أعد المحاولة.'**
  String get homeEmptyRestaurantsHint;

  /// No description provided for @homeRetryRestaurants.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get homeRetryRestaurants;

  /// No description provided for @homeTabOrdersTitle.
  ///
  /// In ar, this message translates to:
  /// **'طلباتك'**
  String get homeTabOrdersTitle;

  /// No description provided for @homeTabOrdersSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'ستظهر طلباتك هنا قريبًا.'**
  String get homeTabOrdersSubtitle;

  /// No description provided for @homeTabRewardsTitle.
  ///
  /// In ar, this message translates to:
  /// **'المكافآت'**
  String get homeTabRewardsTitle;

  /// No description provided for @homeTabRewardsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'نقاطك وعروض الولاء ستظهر هنا.'**
  String get homeTabRewardsSubtitle;

  /// No description provided for @homeTabProfileTitle.
  ///
  /// In ar, this message translates to:
  /// **'حسابي'**
  String get homeTabProfileTitle;

  /// No description provided for @homeTabProfileSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الملف الشخصي قيد التطوير.'**
  String get homeTabProfileSubtitle;

  /// No description provided for @cartTitle.
  ///
  /// In ar, this message translates to:
  /// **'السلة'**
  String get cartTitle;

  /// No description provided for @cartEmptyTitle.
  ///
  /// In ar, this message translates to:
  /// **'سلتك فارغة'**
  String get cartEmptyTitle;

  /// No description provided for @cartEmptySubtitle.
  ///
  /// In ar, this message translates to:
  /// **'أضف أصنافًا من المطاعم لتظهر هنا.'**
  String get cartEmptySubtitle;

  /// No description provided for @cartOrderSummaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الطلب'**
  String get cartOrderSummaryTitle;

  /// No description provided for @cartSubtotal.
  ///
  /// In ar, this message translates to:
  /// **'المجموع الفرعي'**
  String get cartSubtotal;

  /// No description provided for @cartDeliveryFee.
  ///
  /// In ar, this message translates to:
  /// **'رسوم التوصيل'**
  String get cartDeliveryFee;

  /// No description provided for @cartDiscount.
  ///
  /// In ar, this message translates to:
  /// **'الخصم'**
  String get cartDiscount;

  /// No description provided for @cartFinalTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get cartFinalTotal;

  /// No description provided for @cartCheckout.
  ///
  /// In ar, this message translates to:
  /// **'إتمام الطلب'**
  String get cartCheckout;

  /// No description provided for @cartCheckoutComingSoon.
  ///
  /// In ar, this message translates to:
  /// **'الدفع سيتوفر قريبًا.'**
  String get cartCheckoutComingSoon;

  /// No description provided for @cartClearTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إفراغ السلة'**
  String get cartClearTooltip;

  /// No description provided for @cartClearConfirmTitle.
  ///
  /// In ar, this message translates to:
  /// **'إفراغ السلة؟'**
  String get cartClearConfirmTitle;

  /// No description provided for @cartClearConfirmBody.
  ///
  /// In ar, this message translates to:
  /// **'سيتم حذف جميع الأصناف من سلتك.'**
  String get cartClearConfirmBody;

  /// No description provided for @cartClearConfirmAction.
  ///
  /// In ar, this message translates to:
  /// **'إفراغ'**
  String get cartClearConfirmAction;

  /// No description provided for @cartClearCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cartClearCancel;

  /// No description provided for @cartClearedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تم إفراغ السلة'**
  String get cartClearedSnackbar;

  /// No description provided for @cartRemoveItemTooltip.
  ///
  /// In ar, this message translates to:
  /// **'حذف المنتج'**
  String get cartRemoveItemTooltip;

  /// No description provided for @cartErrorDifferentRestaurant.
  ///
  /// In ar, this message translates to:
  /// **'سلتك تحتوي على أصناف من مطعم آخر. أفرغ السلة لإضافة أصناف من هذا المطعم.'**
  String get cartErrorDifferentRestaurant;

  /// No description provided for @cartUnexpectedError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحديث السلة. حاول مرة أخرى.'**
  String get cartUnexpectedError;

  /// No description provided for @restaurantViewCart.
  ///
  /// In ar, this message translates to:
  /// **'عرض السلة'**
  String get restaurantViewCart;

  /// No description provided for @restaurantCartUnits.
  ///
  /// In ar, this message translates to:
  /// **'{count, plural, one{منتج واحد} other{{count} منتجات}}'**
  String restaurantCartUnits(int count);

  /// No description provided for @checkoutTitle.
  ///
  /// In ar, this message translates to:
  /// **'الدفع'**
  String get checkoutTitle;

  /// No description provided for @checkoutDeliverySection.
  ///
  /// In ar, this message translates to:
  /// **'عنوان التوصيل'**
  String get checkoutDeliverySection;

  /// No description provided for @checkoutCityLabel.
  ///
  /// In ar, this message translates to:
  /// **'المدينة'**
  String get checkoutCityLabel;

  /// No description provided for @checkoutStreetLabel.
  ///
  /// In ar, this message translates to:
  /// **'العنوان'**
  String get checkoutStreetLabel;

  /// No description provided for @checkoutAddEditAddress.
  ///
  /// In ar, this message translates to:
  /// **'إضافة / تعديل العنوان'**
  String get checkoutAddEditAddress;

  /// No description provided for @checkoutAddressDetailsTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل العنوان'**
  String get checkoutAddressDetailsTitle;

  /// No description provided for @checkoutBuildingNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم المبنى'**
  String get checkoutBuildingNumber;

  /// No description provided for @checkoutApartmentNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الشقة'**
  String get checkoutApartmentNumber;

  /// No description provided for @checkoutFloorNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الطابق'**
  String get checkoutFloorNumber;

  /// No description provided for @checkoutDeliveryNotes.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات التوصيل'**
  String get checkoutDeliveryNotes;

  /// No description provided for @checkoutPaymentTitle.
  ///
  /// In ar, this message translates to:
  /// **'طريقة الدفع'**
  String get checkoutPaymentTitle;

  /// No description provided for @checkoutPaymentCod.
  ///
  /// In ar, this message translates to:
  /// **'الدفع عند الاستلام'**
  String get checkoutPaymentCod;

  /// No description provided for @checkoutPaymentCard.
  ///
  /// In ar, this message translates to:
  /// **'البطاقة'**
  String get checkoutPaymentCard;

  /// No description provided for @checkoutPaymentCardPlaceholder.
  ///
  /// In ar, this message translates to:
  /// **'قريبًا'**
  String get checkoutPaymentCardPlaceholder;

  /// No description provided for @checkoutPlaceOrder.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد الطلب'**
  String get checkoutPlaceOrder;

  /// No description provided for @checkoutSubmitOrder.
  ///
  /// In ar, this message translates to:
  /// **'إرسال الطلب'**
  String get checkoutSubmitOrder;

  /// No description provided for @checkoutRewardAppliedBadge.
  ///
  /// In ar, this message translates to:
  /// **'مكافأة'**
  String get checkoutRewardAppliedBadge;

  /// No description provided for @checkoutRewardWinHeadline.
  ///
  /// In ar, this message translates to:
  /// **'لقد ربحت!'**
  String get checkoutRewardWinHeadline;

  /// No description provided for @checkoutRewardWheelTitle.
  ///
  /// In ar, this message translates to:
  /// **'عجلة المكافآت'**
  String get checkoutRewardWheelTitle;

  /// No description provided for @checkoutRewardWheelSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'تدور مرة واحدة قبل الإرسال النهائي. الجوائز تُطبَّق على هذا الطلب في العرض التجريبي.'**
  String get checkoutRewardWheelSubtitle;

  /// No description provided for @checkoutRewardLoyaltySummaryLabel.
  ///
  /// In ar, this message translates to:
  /// **'مكافأة الولاء'**
  String get checkoutRewardLoyaltySummaryLabel;

  /// No description provided for @checkoutRewardLoyaltySummaryValue.
  ///
  /// In ar, this message translates to:
  /// **'+{points} نقطة'**
  String checkoutRewardLoyaltySummaryValue(int points);

  /// No description provided for @checkoutPlaceOrderDemo.
  ///
  /// In ar, this message translates to:
  /// **'تم استلام طلبك (تجريبي)'**
  String get checkoutPlaceOrderDemo;

  /// No description provided for @checkoutEmptyCartTitle.
  ///
  /// In ar, this message translates to:
  /// **'السلة فارغة'**
  String get checkoutEmptyCartTitle;

  /// No description provided for @checkoutEmptyCartSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'أضف أصنافًا قبل إتمام الطلب.'**
  String get checkoutEmptyCartSubtitle;

  /// No description provided for @deliveryAddressTitleAdd.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عنوان'**
  String get deliveryAddressTitleAdd;

  /// No description provided for @deliveryAddressTitleEdit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل العنوان'**
  String get deliveryAddressTitleEdit;

  /// No description provided for @deliveryAddressDetectedCityLabel.
  ///
  /// In ar, this message translates to:
  /// **'المدينة المكتشفة'**
  String get deliveryAddressDetectedCityLabel;

  /// No description provided for @deliveryAddressDetectedAreaLabel.
  ///
  /// In ar, this message translates to:
  /// **'المنطقة المكتشفة'**
  String get deliveryAddressDetectedAreaLabel;

  /// No description provided for @deliveryAddressFullAddressLabel.
  ///
  /// In ar, this message translates to:
  /// **'عنوان التوصيل الكامل'**
  String get deliveryAddressFullAddressLabel;

  /// No description provided for @deliveryAddressFullAddressHint.
  ///
  /// In ar, this message translates to:
  /// **'الشارع، أقرب معلم…'**
  String get deliveryAddressFullAddressHint;

  /// No description provided for @deliveryAddressChooseOnMap.
  ///
  /// In ar, this message translates to:
  /// **'تحديد الموقع على الخريطة'**
  String get deliveryAddressChooseOnMap;

  /// No description provided for @deliveryAddressMapSectionHint.
  ///
  /// In ar, this message translates to:
  /// **'يُستخدم الموقع لاحقًا لحساب الوقت ورسوم التوصيل.'**
  String get deliveryAddressMapSectionHint;

  /// No description provided for @deliveryAddressMapPickerComingSoon.
  ///
  /// In ar, this message translates to:
  /// **'سيتم فتح الخريطة عند الربط مع خرائط جوجل.'**
  String get deliveryAddressMapPickerComingSoon;

  /// No description provided for @deliveryAddressPinConfirmedLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم تأكيد نقطة التوصيل'**
  String get deliveryAddressPinConfirmedLabel;

  /// No description provided for @deliveryAddressSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ العنوان'**
  String get deliveryAddressSave;

  /// No description provided for @deliveryAddressStreetRequired.
  ///
  /// In ar, this message translates to:
  /// **'يرجى إدخال عنوان التوصيل الكامل.'**
  String get deliveryAddressStreetRequired;

  /// No description provided for @deliveryAddressSnackbarSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ العنوان'**
  String get deliveryAddressSnackbarSaved;

  /// No description provided for @deliveryAddressDemoCityValue.
  ///
  /// In ar, this message translates to:
  /// **'غزة'**
  String get deliveryAddressDemoCityValue;

  /// No description provided for @deliveryAddressDemoAreaValue.
  ///
  /// In ar, this message translates to:
  /// **'الرمال'**
  String get deliveryAddressDemoAreaValue;

  /// No description provided for @orderSuccessHeadline.
  ///
  /// In ar, this message translates to:
  /// **'تم تأكيد طلبك!'**
  String get orderSuccessHeadline;

  /// No description provided for @orderSuccessIconSemantics.
  ///
  /// In ar, this message translates to:
  /// **'نجاح: تم تأكيد الطلب'**
  String get orderSuccessIconSemantics;

  /// No description provided for @orderSuccessOrderNumberLabel.
  ///
  /// In ar, this message translates to:
  /// **'رقم الطلب'**
  String get orderSuccessOrderNumberLabel;

  /// No description provided for @orderSuccessRestaurantLabel.
  ///
  /// In ar, this message translates to:
  /// **'المطعم'**
  String get orderSuccessRestaurantLabel;

  /// No description provided for @orderSuccessEtaLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوقت المتوقع للتوصيل'**
  String get orderSuccessEtaLabel;

  /// No description provided for @orderSuccessEtaRange.
  ///
  /// In ar, this message translates to:
  /// **'{min}–{max} دقيقة'**
  String orderSuccessEtaRange(int min, int max);

  /// No description provided for @orderSuccessTrackOrder.
  ///
  /// In ar, this message translates to:
  /// **'تتبع الطلب'**
  String get orderSuccessTrackOrder;

  /// No description provided for @orderSuccessBackHome.
  ///
  /// In ar, this message translates to:
  /// **'العودة إلى الرئيسية'**
  String get orderSuccessBackHome;

  /// No description provided for @orderSuccessTrackSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تتبع الطلب سيتوفر قريبًا.'**
  String get orderSuccessTrackSnackbar;

  /// No description provided for @myOrdersHeadline.
  ///
  /// In ar, this message translates to:
  /// **'طلباتي'**
  String get myOrdersHeadline;

  /// No description provided for @myOrdersActiveSection.
  ///
  /// In ar, this message translates to:
  /// **'طلبات نشطة'**
  String get myOrdersActiveSection;

  /// No description provided for @myOrdersCompletedSection.
  ///
  /// In ar, this message translates to:
  /// **'طلبات مكتملة'**
  String get myOrdersCompletedSection;

  /// No description provided for @myOrdersEmptyActive.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد طلبات نشطة حاليًا.'**
  String get myOrdersEmptyActive;

  /// No description provided for @myOrdersEmptyCompleted.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد طلبات مكتملة بعد.'**
  String get myOrdersEmptyCompleted;

  /// No description provided for @myOrdersTapToTrackSemantics.
  ///
  /// In ar, this message translates to:
  /// **'تتبع الطلب'**
  String get myOrdersTapToTrackSemantics;

  /// No description provided for @myOrdersFieldStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get myOrdersFieldStatus;

  /// No description provided for @myOrdersFieldTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الطلب'**
  String get myOrdersFieldTotal;

  /// No description provided for @myOrdersFieldDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get myOrdersFieldDate;

  /// No description provided for @orderStatusPending.
  ///
  /// In ar, this message translates to:
  /// **'قيد الانتظار'**
  String get orderStatusPending;

  /// No description provided for @orderStatusRestaurantAccepted.
  ///
  /// In ar, this message translates to:
  /// **'تم قبول الطلب من المطعم'**
  String get orderStatusRestaurantAccepted;

  /// No description provided for @orderStatusPreparing.
  ///
  /// In ar, this message translates to:
  /// **'قيد التحضير'**
  String get orderStatusPreparing;

  /// No description provided for @orderStatusReadyForPickup.
  ///
  /// In ar, this message translates to:
  /// **'جاهز للاستلام'**
  String get orderStatusReadyForPickup;

  /// No description provided for @orderStatusDriverAssigned.
  ///
  /// In ar, this message translates to:
  /// **'تم تعيين السائق'**
  String get orderStatusDriverAssigned;

  /// No description provided for @orderStatusPickedUp.
  ///
  /// In ar, this message translates to:
  /// **'تم الاستلام من المطعم'**
  String get orderStatusPickedUp;

  /// No description provided for @orderStatusOnTheWay.
  ///
  /// In ar, this message translates to:
  /// **'في الطريق'**
  String get orderStatusOnTheWay;

  /// No description provided for @orderStatusDelivered.
  ///
  /// In ar, this message translates to:
  /// **'تم التوصيل'**
  String get orderStatusDelivered;

  /// No description provided for @orderStatusCancelled.
  ///
  /// In ar, this message translates to:
  /// **'ملغى'**
  String get orderStatusCancelled;

  /// No description provided for @orderTrackingTitle.
  ///
  /// In ar, this message translates to:
  /// **'تتبع الطلب'**
  String get orderTrackingTitle;

  /// No description provided for @orderTrackingTimelineTitle.
  ///
  /// In ar, this message translates to:
  /// **'مسار الطلب'**
  String get orderTrackingTimelineTitle;

  /// No description provided for @orderTrackingDriverLabel.
  ///
  /// In ar, this message translates to:
  /// **'السائق'**
  String get orderTrackingDriverLabel;

  /// No description provided for @orderTrackingRatingLabel.
  ///
  /// In ar, this message translates to:
  /// **'التقييم'**
  String get orderTrackingRatingLabel;

  /// No description provided for @orderTrackingEtaLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوقت المتوقع للوصول'**
  String get orderTrackingEtaLabel;

  /// No description provided for @orderTrackingDriverNotAssigned.
  ///
  /// In ar, this message translates to:
  /// **'لم يُعيَّن بعد'**
  String get orderTrackingDriverNotAssigned;

  /// No description provided for @orderTrackingMapTitle.
  ///
  /// In ar, this message translates to:
  /// **'الخريطة'**
  String get orderTrackingMapTitle;

  /// No description provided for @orderTrackingMapBody.
  ///
  /// In ar, this message translates to:
  /// **'معاينة الخريطة ستُفعَّل عند ربط خرائط جوجل.'**
  String get orderTrackingMapBody;

  /// No description provided for @orderTrackingUnknownOrder.
  ///
  /// In ar, this message translates to:
  /// **'لم يُعثر على هذا الطلب.'**
  String get orderTrackingUnknownOrder;

  /// No description provided for @orderTrackingDemoHint.
  ///
  /// In ar, this message translates to:
  /// **'عرض تجريبي — سيتم ربط التتبع المباشر لاحقًا.'**
  String get orderTrackingDemoHint;

  /// No description provided for @orderTrackingCancelledHeadline.
  ///
  /// In ar, this message translates to:
  /// **'تم إلغاء هذا الطلب.'**
  String get orderTrackingCancelledHeadline;

  /// No description provided for @orderTrackingRateOrder.
  ///
  /// In ar, this message translates to:
  /// **'قيّم الطلب'**
  String get orderTrackingRateOrder;

  /// No description provided for @orderReviewTitle.
  ///
  /// In ar, this message translates to:
  /// **'تقييم الطلب'**
  String get orderReviewTitle;

  /// No description provided for @orderReviewSummaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الطلب'**
  String get orderReviewSummaryTitle;

  /// No description provided for @orderReviewRestaurantRating.
  ///
  /// In ar, this message translates to:
  /// **'تقييم المطعم'**
  String get orderReviewRestaurantRating;

  /// No description provided for @orderReviewDriverRating.
  ///
  /// In ar, this message translates to:
  /// **'تقييم السائق'**
  String get orderReviewDriverRating;

  /// No description provided for @orderReviewCommentLabel.
  ///
  /// In ar, this message translates to:
  /// **'تعليقك (اختياري)'**
  String get orderReviewCommentLabel;

  /// No description provided for @orderReviewCommentHint.
  ///
  /// In ar, this message translates to:
  /// **'كيف كانت تجربتك؟'**
  String get orderReviewCommentHint;

  /// No description provided for @orderReviewAddImages.
  ///
  /// In ar, this message translates to:
  /// **'إضافة صور'**
  String get orderReviewAddImages;

  /// No description provided for @orderReviewImagesSectionHint.
  ///
  /// In ar, this message translates to:
  /// **'معاينة وهمية — رفع الصور الحقيقي سيُفعَّل لاحقًا.'**
  String get orderReviewImagesSectionHint;

  /// No description provided for @orderReviewRemoveImageSemantics.
  ///
  /// In ar, this message translates to:
  /// **'إزالة الصورة'**
  String get orderReviewRemoveImageSemantics;

  /// No description provided for @orderReviewImagePreviewSemantics.
  ///
  /// In ar, this message translates to:
  /// **'معاينة صورة التقييم'**
  String get orderReviewImagePreviewSemantics;

  /// No description provided for @orderReviewSubmit.
  ///
  /// In ar, this message translates to:
  /// **'إرسال التقييم'**
  String get orderReviewSubmit;

  /// No description provided for @orderReviewSubmittedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'شكرًا لتقييمك!'**
  String get orderReviewSubmittedSnackbar;

  /// No description provided for @orderReviewNotDeliveredBody.
  ///
  /// In ar, this message translates to:
  /// **'التقييم متاح فقط بعد اكتمال التوصيل.'**
  String get orderReviewNotDeliveredBody;

  /// No description provided for @orderReviewAlreadySubmittedBody.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال تقييم لهذا الطلب مسبقًا.'**
  String get orderReviewAlreadySubmittedBody;

  /// No description provided for @orderReviewUnknownOrderBody.
  ///
  /// In ar, this message translates to:
  /// **'لم يُعثر على هذا الطلب.'**
  String get orderReviewUnknownOrderBody;

  /// No description provided for @orderReviewBack.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get orderReviewBack;

  /// No description provided for @orderReviewSelectBothRatingsHint.
  ///
  /// In ar, this message translates to:
  /// **'يرجى اختيار تقييم للمطعم وللسائق.'**
  String get orderReviewSelectBothRatingsHint;

  /// No description provided for @orderReviewMaxImagesSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك إرفاق حتى {max} صور كحد أقصى.'**
  String orderReviewMaxImagesSnackbar(int max);

  /// No description provided for @orderReviewMockImageAddedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تمت إضافة صورة (معاينة تجريبية).'**
  String get orderReviewMockImageAddedSnackbar;

  /// No description provided for @orderReviewSetStarSemantics.
  ///
  /// In ar, this message translates to:
  /// **'تعيين التقييم إلى {rating} من 5'**
  String orderReviewSetStarSemantics(int rating);

  /// No description provided for @rewardsHeadline.
  ///
  /// In ar, this message translates to:
  /// **'المكافآت والولاء'**
  String get rewardsHeadline;

  /// No description provided for @rewardsCurrentPointsSection.
  ///
  /// In ar, this message translates to:
  /// **'نقاطك الحالية'**
  String get rewardsCurrentPointsSection;

  /// No description provided for @rewardsTotalPointsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي النقاط'**
  String get rewardsTotalPointsLabel;

  /// No description provided for @rewardsPointsNeededForNextLabel.
  ///
  /// In ar, this message translates to:
  /// **'النقاط للمكافأة التالية'**
  String get rewardsPointsNeededForNextLabel;

  /// No description provided for @rewardsAvailableSection.
  ///
  /// In ar, this message translates to:
  /// **'المكافآت المتاحة'**
  String get rewardsAvailableSection;

  /// No description provided for @rewardsRewardFreeDelivery.
  ///
  /// In ar, this message translates to:
  /// **'توصيل مجاني'**
  String get rewardsRewardFreeDelivery;

  /// No description provided for @rewardsRewardDiscount10.
  ///
  /// In ar, this message translates to:
  /// **'خصم 10٪'**
  String get rewardsRewardDiscount10;

  /// No description provided for @rewardsRewardDiscount20.
  ///
  /// In ar, this message translates to:
  /// **'خصم 20٪'**
  String get rewardsRewardDiscount20;

  /// No description provided for @rewardsRewardFreeFries.
  ///
  /// In ar, this message translates to:
  /// **'بطاطا مجانية'**
  String get rewardsRewardFreeFries;

  /// No description provided for @rewardsRewardFreeDrink.
  ///
  /// In ar, this message translates to:
  /// **'مشروب مجاني'**
  String get rewardsRewardFreeDrink;

  /// No description provided for @rewardsRewardFreeSauce.
  ///
  /// In ar, this message translates to:
  /// **'صوص مجاني'**
  String get rewardsRewardFreeSauce;

  /// No description provided for @rewardsHistorySection.
  ///
  /// In ar, this message translates to:
  /// **'سجل المكافآت'**
  String get rewardsHistorySection;

  /// No description provided for @rewardsEarnedSection.
  ///
  /// In ar, this message translates to:
  /// **'النقاط المكتسبة'**
  String get rewardsEarnedSection;

  /// No description provided for @rewardsRedeemedSection.
  ///
  /// In ar, this message translates to:
  /// **'المكافآت المستبدَلة'**
  String get rewardsRedeemedSection;

  /// No description provided for @rewardsHistoryPointsEarned.
  ///
  /// In ar, this message translates to:
  /// **'+{points}'**
  String rewardsHistoryPointsEarned(String points);

  /// No description provided for @rewardsHistoryEarnedOrder.
  ///
  /// In ar, this message translates to:
  /// **'طلب مكتمل · {orderRef}'**
  String rewardsHistoryEarnedOrder(String orderRef);

  /// No description provided for @rewardsHistoryEarnedReview.
  ///
  /// In ar, this message translates to:
  /// **'مكافأة تقييم'**
  String get rewardsHistoryEarnedReview;

  /// No description provided for @rewardsHistoryEarnedReferral.
  ///
  /// In ar, this message translates to:
  /// **'مكافأة دعوة صديق'**
  String get rewardsHistoryEarnedReferral;

  /// No description provided for @rewardsHistoryRedeemedFreeDelivery.
  ///
  /// In ar, this message translates to:
  /// **'توصيل مجاني'**
  String get rewardsHistoryRedeemedFreeDelivery;

  /// No description provided for @rewardsHistoryRedeemedDiscount10.
  ///
  /// In ar, this message translates to:
  /// **'خصم 10٪'**
  String get rewardsHistoryRedeemedDiscount10;

  /// No description provided for @rewardsHistoryRedeemedDiscount20.
  ///
  /// In ar, this message translates to:
  /// **'خصم 20٪'**
  String get rewardsHistoryRedeemedDiscount20;

  /// No description provided for @rewardsHistoryRedeemedFreeFries.
  ///
  /// In ar, this message translates to:
  /// **'بطاطا مجانية'**
  String get rewardsHistoryRedeemedFreeFries;

  /// No description provided for @rewardsHistoryRedeemedFreeDrink.
  ///
  /// In ar, this message translates to:
  /// **'مشروب مجاني'**
  String get rewardsHistoryRedeemedFreeDrink;

  /// No description provided for @rewardsHistoryRedeemedFreeSauce.
  ///
  /// In ar, this message translates to:
  /// **'صوص مجاني'**
  String get rewardsHistoryRedeemedFreeSauce;

  /// No description provided for @rewardsSpinSection.
  ///
  /// In ar, this message translates to:
  /// **'عجلة المكافآت'**
  String get rewardsSpinSection;

  /// No description provided for @rewardsSpinEligibilityLabel.
  ///
  /// In ar, this message translates to:
  /// **'الأهلية الحالية'**
  String get rewardsSpinEligibilityLabel;

  /// No description provided for @rewardsSpinEligible.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك تدوير العجلة'**
  String get rewardsSpinEligible;

  /// No description provided for @rewardsSpinNotEligible.
  ///
  /// In ar, this message translates to:
  /// **'لا تملك نقاطًا كافية بعد'**
  String get rewardsSpinNotEligible;

  /// No description provided for @rewardsSpinRequiredLabel.
  ///
  /// In ar, this message translates to:
  /// **'النقاط المطلوبة لكل دورة'**
  String get rewardsSpinRequiredLabel;

  /// No description provided for @rewardsSpinRequiredValue.
  ///
  /// In ar, this message translates to:
  /// **'{points}'**
  String rewardsSpinRequiredValue(String points);

  /// No description provided for @rewardsSpinButton.
  ///
  /// In ar, this message translates to:
  /// **'تدوير العجلة'**
  String get rewardsSpinButton;

  /// No description provided for @rewardsSpinComingSoonSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'عجلة المكافآت ستُفعَّل قريبًا.'**
  String get rewardsSpinComingSoonSnackbar;

  /// No description provided for @rewardsSpinDisabledHint.
  ///
  /// In ar, this message translates to:
  /// **'اجمع {points} نقطة لتفعيل التدوير'**
  String rewardsSpinDisabledHint(String points);

  /// No description provided for @rewardsPointsShortUnit.
  ///
  /// In ar, this message translates to:
  /// **'نقطة'**
  String get rewardsPointsShortUnit;

  /// No description provided for @rewardsCheckoutWheelTitle.
  ///
  /// In ar, this message translates to:
  /// **'عجلة المكافآت عند الدفع'**
  String get rewardsCheckoutWheelTitle;

  /// No description provided for @rewardsCheckoutWheelBody.
  ///
  /// In ar, this message translates to:
  /// **'في صفحة الدفع، اضغط «تأكيد الطلب» لدوران العجلة مرة وتطبيق الجائزة على هذه السلة (تجريبي).'**
  String get rewardsCheckoutWheelBody;

  /// No description provided for @rewardsCheckoutWheelBodyEmptyCart.
  ///
  /// In ar, this message translates to:
  /// **'أضف أصنافًا إلى سلتك، ثم افتح الدفع، وادُر العجلة قبل الإرسال النهائي.'**
  String get rewardsCheckoutWheelBodyEmptyCart;

  /// No description provided for @rewardsCheckoutWheelOpenCheckout.
  ///
  /// In ar, this message translates to:
  /// **'فتح الدفع'**
  String get rewardsCheckoutWheelOpenCheckout;

  /// No description provided for @rewardWheelScreenTitle.
  ///
  /// In ar, this message translates to:
  /// **'عجلة المكافآت'**
  String get rewardWheelScreenTitle;

  /// No description provided for @rewardWheelScreenSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'التدوير يحدث في الدفع قبل الإرسال النهائي. افتح السلة، انتقل للدفع، اضغط «تأكيد الطلب»، ثم المطالبة بالجائزة (تجريبي).'**
  String get rewardWheelScreenSubtitle;

  /// No description provided for @rewardWheelGoToCartCta.
  ///
  /// In ar, this message translates to:
  /// **'الذهاب إلى السلة'**
  String get rewardWheelGoToCartCta;

  /// No description provided for @rewardWheelSpinButton.
  ///
  /// In ar, this message translates to:
  /// **'ادر العجلة'**
  String get rewardWheelSpinButton;

  /// No description provided for @rewardWheelNoSpinsTitle.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فرص تدوير'**
  String get rewardWheelNoSpinsTitle;

  /// No description provided for @rewardWheelNoSpinsBody.
  ///
  /// In ar, this message translates to:
  /// **'عندما يُسلَّم طلبك ستجد زر التدوير هنا وفي صفحة تتبع الطلب.'**
  String get rewardWheelNoSpinsBody;

  /// No description provided for @rewardWheelUnknownOrderTitle.
  ///
  /// In ar, this message translates to:
  /// **'الطلب غير موجود'**
  String get rewardWheelUnknownOrderTitle;

  /// No description provided for @rewardWheelUnknownOrderBody.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر العثور على هذا الطلب في العرض التجريبي.'**
  String get rewardWheelUnknownOrderBody;

  /// No description provided for @rewardWheelAlreadyUsedTitle.
  ///
  /// In ar, this message translates to:
  /// **'تم استخدام فرصة التدوير'**
  String get rewardWheelAlreadyUsedTitle;

  /// No description provided for @rewardWheelAlreadyUsedBody.
  ///
  /// In ar, this message translates to:
  /// **'استخدمتَ بالفعل عجلة المكافأة لهذا الطلب {orderNumber}.'**
  String rewardWheelAlreadyUsedBody(String orderNumber);

  /// No description provided for @rewardWheelForOrderLabel.
  ///
  /// In ar, this message translates to:
  /// **'الطلب {orderNumber}'**
  String rewardWheelForOrderLabel(String orderNumber);

  /// No description provided for @rewardWheelHistoryTitle.
  ///
  /// In ar, this message translates to:
  /// **'سجل عجلة المكافآت'**
  String get rewardWheelHistoryTitle;

  /// No description provided for @rewardWheelHistoryEmpty.
  ///
  /// In ar, this message translates to:
  /// **'ستظهر الجوائز التي تربحها هنا.'**
  String get rewardWheelHistoryEmpty;

  /// No description provided for @rewardWheelHistoryOrderLine.
  ///
  /// In ar, this message translates to:
  /// **'الطلب {orderNumber}'**
  String rewardWheelHistoryOrderLine(String orderNumber);

  /// No description provided for @rewardWheelHistoryCheckoutOrderLine.
  ///
  /// In ar, this message translates to:
  /// **'الطلب الحالي (الدفع)'**
  String get rewardWheelHistoryCheckoutOrderLine;

  /// No description provided for @rewardWheelHistoryClaimedBadge.
  ///
  /// In ar, this message translates to:
  /// **'تمت المطالبة'**
  String get rewardWheelHistoryClaimedBadge;

  /// No description provided for @rewardWheelHistorySavedBadge.
  ///
  /// In ar, this message translates to:
  /// **'محفوظ في الحساب'**
  String get rewardWheelHistorySavedBadge;

  /// No description provided for @rewardWheelCelebrationBarrierLabel.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get rewardWheelCelebrationBarrierLabel;

  /// No description provided for @rewardWheelCelebrationHeadline.
  ///
  /// In ar, this message translates to:
  /// **'مبروك!'**
  String get rewardWheelCelebrationHeadline;

  /// No description provided for @rewardWheelClaimButton.
  ///
  /// In ar, this message translates to:
  /// **'المطالبة بالجائزة'**
  String get rewardWheelClaimButton;

  /// No description provided for @rewardWheelContinueButton.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get rewardWheelContinueButton;

  /// No description provided for @rewardWheelPrizeFreeColaTitle.
  ///
  /// In ar, this message translates to:
  /// **'كولا مجانًا'**
  String get rewardWheelPrizeFreeColaTitle;

  /// No description provided for @rewardWheelPrizeFreeColaDescription.
  ///
  /// In ar, this message translates to:
  /// **'نضيف مشروب كولا إلى هذا الطلب دون رسوم (تجريبي).'**
  String get rewardWheelPrizeFreeColaDescription;

  /// No description provided for @rewardWheelPrizeFreeFriesTitle.
  ///
  /// In ar, this message translates to:
  /// **'بطاطا مجانًا'**
  String get rewardWheelPrizeFreeFriesTitle;

  /// No description provided for @rewardWheelPrizeFreeFriesDescription.
  ///
  /// In ar, this message translates to:
  /// **'نضيف بطاطا مقلية إلى هذا الطلب دون رسوم (تجريبي).'**
  String get rewardWheelPrizeFreeFriesDescription;

  /// No description provided for @rewardWheelPrizeMealDiscount50Title.
  ///
  /// In ar, this message translates to:
  /// **'خصم ٥٠٪ على هذا الطلب'**
  String get rewardWheelPrizeMealDiscount50Title;

  /// No description provided for @rewardWheelPrizeMealDiscount50Description.
  ///
  /// In ar, this message translates to:
  /// **'خصم نصف مجموع أصناف الطعام لهذا الدفع (تجريبي).'**
  String get rewardWheelPrizeMealDiscount50Description;

  /// No description provided for @rewardWheelPrizeFreeDeliveryTitle.
  ///
  /// In ar, this message translates to:
  /// **'توصيل مجاني'**
  String get rewardWheelPrizeFreeDeliveryTitle;

  /// No description provided for @rewardWheelPrizeFreeDeliveryDescription.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء رسوم التوصيل لهذا الطلب (تجريبي).'**
  String get rewardWheelPrizeFreeDeliveryDescription;

  /// No description provided for @rewardWheelPrizeLoyalty25Title.
  ///
  /// In ar, this message translates to:
  /// **'٢٥ نقطة ولاء'**
  String get rewardWheelPrizeLoyalty25Title;

  /// No description provided for @rewardWheelPrizeLoyalty25Description.
  ///
  /// In ar, this message translates to:
  /// **'نقاط إضافية لرصيد المكافآت (تجريبي).'**
  String get rewardWheelPrizeLoyalty25Description;

  /// No description provided for @rewardWheelPrizeLoyalty50Title.
  ///
  /// In ar, this message translates to:
  /// **'٥٠ نقطة ولاء'**
  String get rewardWheelPrizeLoyalty50Title;

  /// No description provided for @rewardWheelPrizeLoyalty50Description.
  ///
  /// In ar, this message translates to:
  /// **'دفعة أكبر من نقاط الولاء (تجريبي).'**
  String get rewardWheelPrizeLoyalty50Description;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
