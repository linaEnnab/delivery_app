import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:delivery_app/core/widgets/custom_text_field.dart';
import 'package:delivery_app/core/widgets/primary_button.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_flow_controllers.dart';
import 'package:delivery_app/features/auth/presentation/utils/auth_validators.dart';
import 'package:delivery_app/features/auth/presentation/widgets/auth_password_field.dart';
import 'package:delivery_app/features/auth/presentation/widgets/auth_screen_shell.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Customer registration via [RegisterController]; post-success navigation is
/// handled by GoRouter when the session becomes signed in.
class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
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

    final registerAsync = ref.watch(registerControllerProvider);
    final isLoading = registerAsync.isLoading;

    ref.listen(registerControllerProvider, (prev, next) {
      if (!next.isLoading && next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.authRegisterFailed)),
        );
      }
    });

    return AuthScreenShell(
      leading: IconButton(
        tooltip: l10n.authBack,
        onPressed: isLoading ? null : () => context.pop(),
        icon: const Icon(Icons.arrow_back_rounded),
      ),
      title: l10n.authRegisterTitle,
      child: AutofillGroup(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: AppSpacing.md),
              Text(
                l10n.authRegisterSubtitle,
                style: textTheme.bodyLarge?.copyWith(
                  color: scheme.onSurfaceVariant,
                  fontFamily: AppTypography.fontFamily,
                  fontFamilyFallback: AppFontFamilies.latinFallback(),
                ),
              ),
              SizedBox(height: gap),
              CustomTextField(
                controller: _nameController,
                labelText: l10n.authFullNameLabel,
                hintText: l10n.authFullNameHint,
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.name],
                validator: (v) => AuthValidators.fullName(l10n, v),
              ),
              SizedBox(height: AppSpacing.lg),
              CustomTextField(
                controller: _phoneController,
                labelText: l10n.authPhoneLabel,
                hintText: l10n.authPhoneHint,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.telephoneNumberDevice],
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[\d+\s\-]')),
                ],
                validator: (v) => AuthValidators.phone(l10n, v),
              ),
              SizedBox(height: AppSpacing.lg),
              CustomTextField(
                controller: _emailController,
                labelText: l10n.authEmailLabel,
                hintText: l10n.authEmailHint,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                autofillHints: const [AutofillHints.email],
                validator: (v) => AuthValidators.emailRequired(l10n, v),
              ),
              SizedBox(height: AppSpacing.lg),
              AuthPasswordField(
                controller: _passwordController,
                l10n: l10n,
                labelText: l10n.authPasswordLabel,
                hintText: l10n.authPasswordHint,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.newPassword],
                validator: (v) => AuthValidators.password(l10n, v),
              ),
              SizedBox(height: AppSpacing.lg),
              AuthPasswordField(
                controller: _confirmController,
                l10n: l10n,
                labelText: l10n.authConfirmPasswordLabel,
                hintText: l10n.authPasswordHint,
                textInputAction: TextInputAction.done,
                autofillHints: const [AutofillHints.newPassword],
                validator: (v) => AuthValidators.passwordMatch(
                  l10n,
                  _passwordController.text,
                  v,
                ),
              ),
              SizedBox(height: AppSpacing.xl),
              PrimaryButton(
                label: l10n.authRegisterButton,
                isLoading: isLoading,
                onPressed: isLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();
                        if (!(_formKey.currentState?.validate() ?? false)) {
                          return;
                        }
                        await ref.read(registerControllerProvider.notifier).submit(
                              fullName: _nameController.text.trim(),
                              phone: _phoneController.text.trim(),
                              email: _emailController.text.trim(),
                              password: _passwordController.text,
                            );
                      },
              ),
              SizedBox(height: AppSpacing.xxl),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: AppSpacing.xs,
                runSpacing: AppSpacing.xs,
                children: [
                  Text(
                    l10n.authHaveAccount,
                    style: textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                      fontFamily: AppTypography.fontFamily,
                      fontFamilyFallback: AppFontFamilies.latinFallback(),
                    ),
                  ),
                  TextButton(
                    onPressed: isLoading ? null : () => context.pop(),
                    child: Text(l10n.authLoginLink),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }
}
