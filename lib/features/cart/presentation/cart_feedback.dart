import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/features/cart/domain/cart_business_rules.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

String cartFailureUserMessage(Failure failure, AppLocalizations l10n) {
  return failure.maybeWhen(
    businessRule: (message) =>
        message == CartBusinessRules.differentRestaurant
            ? l10n.cartErrorDifferentRestaurant
            : message,
    notFound: (_) => l10n.cartUnexpectedError,
    orElse: () => l10n.cartUnexpectedError,
  );
}

void showCartFailureSnackBar(
  BuildContext context,
  AppLocalizations l10n,
  Failure failure,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(cartFailureUserMessage(failure, l10n))),
  );
}
