import 'package:delivery_app/core/router/route_paths.dart';
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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Customer login — email + password via [LoginController]; navigation after
/// success is handled by GoRouter redirects when the session becomes signed in.
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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

    final loginAsync = ref.watch(loginControllerProvider);
    final isLoading = loginAsync.isLoading;

    ref.listen(loginControllerProvider, (prev, next) {
      if (!next.isLoading && next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.authLoginFailed)),
        );
      }
    });

    return AuthScreenShell(
      child: AutofillGroup(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: AppSpacing.xl),
              const Center(child: AuthBrandMark()),
              SizedBox(height: gap),
              Text(
                l10n.authLoginTitle,
                textAlign: TextAlign.center,
                style: textTheme.headlineSmall?.copyWith(
                  color: scheme.onSurface,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppTypography.fontFamily,
                  fontFamilyFallback: AppFontFamilies.latinFallback(),
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                l10n.authLoginSubtitle,
                textAlign: TextAlign.center,
                style: textTheme.bodyLarge?.copyWith(
                  color: scheme.onSurfaceVariant,
                  fontFamily: AppTypography.fontFamily,
                  fontFamilyFallback: AppFontFamilies.latinFallback(),
                ),
              ),
              SizedBox(height: gap),
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
                textInputAction: TextInputAction.done,
                autofillHints: const [AutofillHints.password],
                validator: (v) => AuthValidators.password(l10n, v),
              ),
              SizedBox(height: AppSpacing.sm),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: isLoading
                      ? null
                      : () => context.push(RoutePaths.forgotPassword),
                  child: Text(l10n.authForgotPassword),
                ),
              ),
              SizedBox(height: AppSpacing.xl),
              PrimaryButton(
                label: l10n.authLoginButton,
                isLoading: isLoading,
                onPressed: isLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();
                        if (!(_formKey.currentState?.validate() ?? false)) {
                          return;
                        }
                        await ref.read(loginControllerProvider.notifier).submit(
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
                    l10n.authNoAccount,
                    style: textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                      fontFamily: AppTypography.fontFamily,
                      fontFamilyFallback: AppFontFamilies.latinFallback(),
                    ),
                  ),
                  TextButton(
                    onPressed: isLoading
                        ? null
                        : () => context.push(RoutePaths.register),
                    child: Text(l10n.authRegisterLink),
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
