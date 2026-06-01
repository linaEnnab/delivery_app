import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Text field aligned with [InputDecorationTheme] and [AppSpacing] content padding overrides.
///
/// Uses [AppTypography] body styles from the active [ThemeData.textTheme].
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines,
    this.onChanged,
    this.onSubmitted,
    this.inputFormatters,
    this.autofillHints,
    this.textCapitalization = TextCapitalization.none,
    this.autocorrect = true,
    this.validator,
    this.onTap,
    this.contentPadding,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final bool autocorrect;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? contentPadding;

  TextStyle _bodyStyle(ThemeData theme) {
    return theme.textTheme.bodyLarge!.copyWith(
      fontFamily: AppTypography.fontFamily,
      fontFamilyFallback: AppFontFamilies.latinFallback(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final decoration = InputDecoration(
      labelText: labelText,
      hintText: hintText,
      helperText: helperText,
      errorText: errorText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      contentPadding: contentPadding,
    ).applyDefaults(theme.inputDecorationTheme);

    final style = _bodyStyle(theme);

    if (validator != null) {
      return TextFormField(
        controller: controller,
        focusNode: focusNode,
        decoration: decoration,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: obscureText,
        enabled: enabled,
        readOnly: readOnly,
        maxLines: obscureText ? 1 : maxLines,
        minLines: obscureText ? null : minLines,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        inputFormatters: inputFormatters,
        autofillHints: autofillHints,
        textCapitalization: textCapitalization,
        autocorrect: autocorrect,
        validator: validator,
        onTap: onTap,
        style: style,
      );
    }

    return TextField(
      controller: controller,
      focusNode: focusNode,
      decoration: decoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      enabled: enabled,
      readOnly: readOnly,
      maxLines: obscureText ? 1 : maxLines,
      minLines: obscureText ? null : minLines,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      inputFormatters: inputFormatters,
      autofillHints: autofillHints,
      textCapitalization: textCapitalization,
      autocorrect: autocorrect,
      onTap: onTap,
      style: style,
    );
  }
}
