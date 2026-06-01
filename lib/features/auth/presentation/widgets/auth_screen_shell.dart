import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/// Shared gradient + constrained content width for auth screens (RTL-aware).
class AuthScreenShell extends StatelessWidget {
  const AuthScreenShell({
    super.key,
    required this.child,
    this.leading,
    this.title,
  });

  final Widget child;
  final Widget? leading;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final width = MediaQuery.sizeOf(context).width;
    final gutter = AppSpacing.pageHorizontalGutter(width);
    final maxW = AppSpacing.contentMaxWidth(width);
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    return Scaffold(
      backgroundColor: scheme.surface,
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              scheme.surface,
              Color.lerp(scheme.surface, scheme.primary, 0.07) ?? scheme.surface,
            ],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxW),
                  child: Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: gutter),
                    child: CustomScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      slivers: [
                        if (leading != null || title != null)
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: AppSpacing.md,
                              ),
                              child: Row(
                                textDirection: Directionality.of(context),
                                children: <Widget>[
                                  ...leading == null ? <Widget>[] : <Widget>[leading!],
                                  if (title case final t?)
                                    Expanded(
                                      child: Text(
                                        t,
                                        style: theme.textTheme.titleLarge
                                            ?.copyWith(
                                          fontFamily: AppTypography.fontFamily,
                                          fontFamilyFallback:
                                              AppFontFamilies.latinFallback(),
                                        ),
                                      ),
                                    )
                                  else if (leading != null)
                                    const Spacer(),
                                ],
                              ),
                            ),
                          ),
                        SliverPadding(
                          padding: EdgeInsets.only(bottom: bottomInset),
                          sliver: SliverToBoxAdapter(child: child),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// Compact brand tile used above auth titles.
class AuthBrandMark extends StatelessWidget {
  const AuthBrandMark({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final s = size ??
        (w >= AppBreakpoints.expanded
            ? AppSpacing.colossal + AppSpacing.xl
            : AppSpacing.colossal + AppSpacing.md);

    return Semantics(
      label: AppLocalizations.of(context).authAppTitle,
      child: Material(
        elevation: AppSpacing.xs,
        shadowColor: AppColors.primary.withValues(alpha: 0.35),
        shape: RoundedRectangleBorder(borderRadius: AppRadius.borderXl),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: s,
          height: s,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [AppColors.primary, AppColors.primaryContainerDark],
              ),
            ),
            child: Center(
              child: Icon(
                Icons.delivery_dining_rounded,
                color: AppColors.onPrimary,
                size: AppSpacing.massive,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
