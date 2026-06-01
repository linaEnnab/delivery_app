import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show NumberFormat;

String formatMoneyForLocale(BuildContext context, Money money) {
  final locale = Localizations.localeOf(context).toString();
  return NumberFormat.simpleCurrency(
    name: money.currencyCode,
    locale: locale,
  ).format(money.amount);
}
