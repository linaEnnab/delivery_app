import 'package:delivery_app/l10n/app_localizations.dart';

/// Client-side validation for auth forms (Arabic / English messages via [l10n]).
abstract final class AuthValidators {
  static String? phone(AppLocalizations l10n, String? value) {
    final raw = value?.trim() ?? '';
    if (raw.isEmpty) return l10n.authPhoneRequired;
    final digits = raw.replaceAll(RegExp(r'\D'), '');
    if (digits.length < 9) return l10n.authPhoneInvalid;
    return null;
  }

  static String? password(AppLocalizations l10n, String? value) {
    final v = value ?? '';
    if (v.isEmpty) return l10n.authPasswordRequired;
    if (v.length < 8) return l10n.authPasswordMin;
    return null;
  }

  static String? passwordMatch(
    AppLocalizations l10n,
    String? password,
    String? confirm,
  ) {
    final p = password ?? '';
    final c = confirm ?? '';
    if (c.isEmpty) return l10n.authPasswordRequired;
    if (p != c) return l10n.authPasswordMismatch;
    return null;
  }

  static String? fullName(AppLocalizations l10n, String? value) {
    if ((value?.trim() ?? '').isEmpty) return l10n.authNameRequired;
    return null;
  }

  /// Empty is valid; non-empty must look like an email.
  static String? emailOptional(AppLocalizations l10n, String? value) {
    final t = value?.trim() ?? '';
    if (t.isEmpty) return null;
    final email = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    if (!email.hasMatch(t)) return l10n.authEmailInvalid;
    return null;
  }
}
