import 'package:delivery_app/core/startup/startup_destination.dart';
import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Arabic-first splash — brand mark, title, smooth fades, then the startup route
/// from [postSplashDestinationProvider] (onboarding, login, or home).
///
/// Replace [_SplashBrandMark] with [Image.asset] when `assets/images/` logo is added
/// and registered in `pubspec.yaml`.
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  /// Minimum time splash is visible (animation + perceived polish).
  static const Duration _displayDuration = Duration(milliseconds: 2400);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _markFade;
  late final Animation<double> _titleFade;
  late final Animation<double> _subtitleFade;
  late final Animation<double> _loaderFade;
  var _navigationScheduled = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );

    _markFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.45, curve: Curves.easeOutCubic),
    );
    _titleFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.18, 0.62, curve: Curves.easeOutCubic),
    );
    _subtitleFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.28, 0.72, curve: Curves.easeOutCubic),
    );
    _loaderFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 1.0, curve: Curves.easeOutCubic),
    );

    _controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scheduleNavigation());
  }

  Future<void> _scheduleNavigation() async {
    if (_navigationScheduled) return;
    _navigationScheduled = true;
    await Future<void>.delayed(SplashPage._displayDuration);
    if (!mounted) return;
    final next = ref.read(postSplashDestinationProvider);
    if (!mounted) return;
    context.go(next);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final gutter = AppSpacing.pageHorizontalGutter(
      MediaQuery.sizeOf(context).width,
    );

    return Semantics(
      label: 'شاشة الترحيب، جاري التحميل',
      child: Scaffold(
        backgroundColor: scheme.surface,
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                scheme.surface,
                Color.lerp(scheme.surface, AppColors.primary, 0.08) ??
                    scheme.surface,
              ],
            ),
          ),
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final maxW = AppSpacing.contentMaxWidth(constraints.maxWidth);
                return Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxW),
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: gutter,
                      ),
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(flex: 2),
                              FadeTransition(
                                opacity: _markFade,
                                child: _SplashBrandMark(
                                  size: _logoSize(constraints.maxWidth),
                                ),
                              ),
                              SizedBox(height: AppSpacing.xxl),
                              FadeTransition(
                                opacity: _titleFade,
                                child: Text(
                                  'ديليفري',
                                  textAlign: TextAlign.center,
                                  style: textTheme.headlineLarge?.copyWith(
                                    color: scheme.onSurface,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: AppTypography.fontFamily,
                                    fontFamilyFallback:
                                        AppFontFamilies.latinFallback(),
                                  ),
                                ),
                              ),
                              SizedBox(height: AppSpacing.sm),
                              FadeTransition(
                                opacity: _subtitleFade,
                                child: Text(
                                  'سوق الطعام والتوصيل',
                                  textAlign: TextAlign.center,
                                  style: textTheme.bodyLarge?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                    fontFamily: AppTypography.fontFamily,
                                    fontFamilyFallback:
                                        AppFontFamilies.latinFallback(),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 3),
                              FadeTransition(
                                opacity: _loaderFade,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: AppSpacing.xxxl,
                                  ),
                                  child: SizedBox(
                                    width: AppSpacing.massive,
                                    height: AppSpacing.massive,
                                    child: CircularProgressIndicator(
                                      color: scheme.primary,
                                      strokeWidth:
                                          AppSpacing.xxs + AppSpacing.xxs,
                                      semanticsLabel: 'جاري التحميل',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  double _logoSize(double width) {
    if (width >= AppBreakpoints.expanded) {
      return AppSpacing.colossal * 2 + AppSpacing.md;
    }
    if (width >= AppBreakpoints.medium) {
      return AppSpacing.colossal * 2;
    }
    return AppSpacing.colossal + AppSpacing.xl;
  }
}

/// Vector brand mark — swap for raster/SVG asset when available.
class _SplashBrandMark extends StatelessWidget {
  const _SplashBrandMark({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    final iconSize = size * 0.48;

    return Material(
      elevation: AppSpacing.xs,
      shadowColor: AppColors.primary.withValues(alpha: 0.35),
      shape: RoundedRectangleBorder(borderRadius: AppRadius.borderXl),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: size,
        height: size,
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
              size: iconSize,
              color: AppColors.onPrimary,
              semanticLabel: 'شعار التطبيق',
            ),
          ),
        ),
      ),
    );
  }
}
