import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

/// Search bar — leading icon follows locale direction; Arabic-first default hint.
class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction = TextInputAction.search,
    this.readOnly = false,
    this.onTap,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  /// Defaults to Arabic marketplace copy when null.
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputAction textInputAction;
  final bool readOnly;
  final VoidCallback? onTap;
  final Widget? suffixIcon;

  static const String defaultHintAr = 'ابحث عن مطاعم أو أطباق…';

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return CustomTextField(
      controller: controller,
      focusNode: focusNode,
      hintText: hintText ?? defaultHintAr,
      prefixIcon: Icon(
        Icons.search_rounded,
        color: scheme.onSurfaceVariant,
        size: AppSpacing.xxl,
      ),
      suffixIcon: suffixIcon,
      keyboardType: TextInputType.text,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      readOnly: readOnly,
      onTap: onTap,
    );
  }
}
