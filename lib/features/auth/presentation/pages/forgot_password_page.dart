import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:delivery_app/core/widgets/custom_text_field.dart';
import 'package:delivery_app/core/widgets/primary_button.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_flow_controllers.dart';
import 'package:delivery_app/features/auth/presentation/utils/auth_validators.dart';
import 'package:delivery_app/features/auth/presentation/widgets/auth_screen_shell.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Forgot password — phone + mock send code (no API yet).
class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final width = MediaQuery.sizeOf(context).width;
    final gap = AppSpacing.sectionGap(width);

    final forgotAsync = ref.watch(forgotPasswordControllerProvider);
    final isLoading = forgotAsync.isLoading;

    ref.listen(forgotPasswordControllerProvider, (prev, next) {
      if (!next.isLoading && next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.authSendCodeFailed)),
        );
      }
      if (prev?.isLoading == true && next.hasValue) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.authCodeSent),
            behavior: SnackBarBehavior.floating,
          ),
        );
        Future<void>.delayed(const Duration(milliseconds: 650), () {
          if (context.mounted) context.pop();
        });
      }
    });

    return AuthScreenShell(
      leading: IconButton(
        tooltip: l10n.authBack,
        onPressed: isLoading ? null : () => context.pop(),
        icon: const Icon(Icons.arrow_back_rounded),
      ),
      title: l10n.authForgotTitle,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: AppSpacing.md),
            Text(
              l10n.authForgotSubtitle,
              style: textTheme.bodyLarge?.copyWith(
                color: scheme.onSurfaceVariant,
                fontFamily: AppTypography.fontFamily,
                fontFamilyFallback: AppFontFamilies.latinFallback(),
              ),
            ),
            SizedBox(height: gap),
            CustomTextField(
              controller: _phoneController,
              labelText: l10n.authPhoneLabel,
              hintText: l10n.authPhoneHint,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.telephoneNumberDevice],
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[\d+\s\-]')),
              ],
              validator: (v) => AuthValidators.phone(l10n, v),
            ),
            SizedBox(height: AppSpacing.xl),
            PrimaryButton(
              label: l10n.authSendCodeButton,
              isLoading: isLoading,
              onPressed: isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();
                      if (!(_formKey.currentState?.validate() ?? false)) {
                        return;
                      }
                      await ref
                          .read(forgotPasswordControllerProvider.notifier)
                          .submit(phone: _phoneController.text.trim());
                    },
            ),
            SizedBox(height: AppSpacing.xxl),
          ],
        ),
      ),
    );
  }
}
