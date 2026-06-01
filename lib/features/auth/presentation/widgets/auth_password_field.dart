import 'package:delivery_app/core/widgets/custom_text_field.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/// Password field with visibility toggle — [CustomTextField] + M3 [IconButton].
class AuthPasswordField extends StatefulWidget {
  const AuthPasswordField({
    super.key,
    required this.controller,
    required this.l10n,
    required this.labelText,
    this.hintText,
    this.textInputAction = TextInputAction.done,
    this.validator,
    this.autofillHints,
  });

  final TextEditingController controller;
  final AppLocalizations l10n;
  final String labelText;
  final String? hintText;
  final TextInputAction textInputAction;
  final FormFieldValidator<String>? validator;
  final Iterable<String>? autofillHints;

  @override
  State<AuthPasswordField> createState() => _AuthPasswordFieldState();
}

class _AuthPasswordFieldState extends State<AuthPasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      labelText: widget.labelText,
      hintText: widget.hintText,
      obscureText: _obscure,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.visiblePassword,
      autocorrect: false,
      autofillHints: widget.autofillHints,
      validator: widget.validator,
      suffixIcon: IconButton(
        onPressed: () => setState(() => _obscure = !_obscure),
        tooltip: _obscure ? widget.l10n.authShowPassword : widget.l10n.authHidePassword,
        icon: Icon(
          _obscure ? Icons.visibility_rounded : Icons.visibility_off_rounded,
        ),
      ),
    );
  }
}
