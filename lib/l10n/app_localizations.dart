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
