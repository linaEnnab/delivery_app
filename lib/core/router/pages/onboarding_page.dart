import 'package:delivery_app/core/startup/onboarding_completion_provider.dart';
import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppLineHeights, AppTypography;
import 'package:delivery_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Arabic-first onboarding — [PageView], skip / next / get started.
///
/// Completing or skipping persists onboarding and [GoRouter] redirect sends the user
/// to login. Layout is RTL-aware (`EdgeInsetsDirectional`, `AlignmentDirectional`).
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  static const int _pageCount = 3;

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  late final PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    await ref.read(onboardingCompletedNotifierProvider.notifier).markCompleted();
    if (!mounted) return;
    // Ensure redirect re-runs; refreshListenable alone can miss a frame in some cases.
    GoRouter.of(context).refresh();
  }

  Future<void> _animateToPage(int page) async {
    await _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final semantics = theme.extension<MarketplaceSemantics>();
    final width = MediaQuery.sizeOf(context).width;
    final gutter = AppSpacing.pageHorizontalGutter(width);
    final maxW = AppSpacing.contentMaxWidth(width);

    return Semantics(
      label: 'جولة تعريفية بالتطبيق',
      child: Scaffold(
        backgroundColor: scheme.surface,
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                scheme.surface,
                Color.lerp(scheme.surface, scheme.primary, 0.06) ??
                    scheme.surface,
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
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: gutter,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: TextButton(
                              onPressed: _completeOnboarding,
                              child: Text(
                                'تخطي',
                                style: textTheme.labelLarge?.copyWith(
                                  color: scheme.primary,
                                  fontFamily: AppTypography.fontFamily,
                                  fontFamilyFallback:
                                      AppFontFamilies.latinFallback(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: PageView(
                              controller: _pageController,
                              physics: const BouncingScrollPhysics(),
                              onPageChanged: (i) =>
                                  setState(() => _pageIndex = i),
                              children: [
                                _OnboardingSlide(
                                  icon: Icons.storefront_rounded,
                                  title: 'اكتشف المطاعم القريبة',
                                  body:
                                      'تصفّح المطاعم حولك، العروض، والتقييمات في مكان واحد.',
                                  gradient: const [
                                    AppColors.primary,
                                    AppColors.primaryContainerDark,
                                  ],
                                  iconColor: scheme.onPrimary,
                                  iconSemanticLabel: 'مطعم',
                                ),
                                _OnboardingSlide(
                                  icon: Icons.route_rounded,
                                  title: 'تتبع التوصيل بسرعة',
                                  body:
                                      'تابع طلبك لحظة بلحظة من المطعم حتى باب منزلك.',
                                  gradient: [
                                    scheme.secondary,
                                    scheme.secondaryContainer,
                                  ],
                                  iconColor: scheme.onSecondary,
                                  iconSemanticLabel: 'مسار التوصيل',
                                ),
                                _OnboardingSlide(
                                  icon: Icons.workspace_premium_rounded,
                                  title: 'نقاط الولاء والمكافآت',
                                  body:
                                      'اجمع النقاط مع كل طلب واستبدلها بخصومات وهدايا.',
                                  gradient: [
                                    semantics?.loyaltyAccent ??
                                        AppColors.loyaltyAccent,
                                    Color.lerp(
                                          semantics?.loyaltyAccent ??
                                              AppColors.loyaltyAccent,
                                          Colors.black,
                                          0.28,
                                        ) ??
                                        AppColors.loyaltyAccent,
                                  ],
                                  iconColor: AppColors.onPrimary,
                                  iconSemanticLabel: 'مكافآت الولاء',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: AppSpacing.sectionGap(width)),
                          _PageDots(
                            count: OnboardingPage._pageCount,
                            activeIndex: _pageIndex,
                            activeColor: scheme.primary,
                            inactiveColor: scheme.outlineVariant,
                          ),
                          SizedBox(height: AppSpacing.xl),
                          if (_pageIndex < OnboardingPage._pageCount - 1)
                            PrimaryButton(
                              label: 'التالي',
                              onPressed: () =>
                                  _animateToPage(_pageIndex + 1),
                            )
                          else
                            PrimaryButton(
                              label: 'ابدأ',
                              onPressed: _completeOnboarding,
                            ),
                          SizedBox(height: AppSpacing.md),
                        ],
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
}

class _PageDots extends StatelessWidget {
  const _PageDots({
    required this.count,
    required this.activeIndex,
    required this.activeColor,
    required this.inactiveColor,
  });

  final int count;
  final int activeIndex;
  final Color activeColor;
  final Color inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: Directionality.of(context),
      children: List.generate(count, (i) {
        final active = i == activeIndex;
        return Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: AppSpacing.xs,
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            width: active ? AppSpacing.lg : AppSpacing.sm,
            height: AppSpacing.sm,
            decoration: BoxDecoration(
              borderRadius: AppRadius.borderFull,
              color: active ? activeColor : inactiveColor,
            ),
          ),
        );
      }),
    );
  }
}

class _OnboardingSlide extends StatelessWidget {
  const _OnboardingSlide({
    required this.icon,
    required this.title,
    required this.body,
    required this.gradient,
    required this.iconColor,
    required this.iconSemanticLabel,
  });

  final IconData icon;
  final String title;
  final String body;
  final List<Color> gradient;
  final Color iconColor;
  final String iconSemanticLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final width = MediaQuery.sizeOf(context).width;
    final illustrationSize = _illustrationSize(width);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _OnboardingIllustration(
          icon: icon,
          size: illustrationSize,
          gradient: gradient,
          iconColor: iconColor,
          semanticLabel: iconSemanticLabel,
        ),
        SizedBox(height: AppSpacing.xxxl),
        Text(
          title,
          textAlign: TextAlign.center,
          style: textTheme.headlineSmall?.copyWith(
            color: scheme.onSurface,
            fontWeight: FontWeight.w700,
            fontFamily: AppTypography.fontFamily,
            fontFamilyFallback: AppFontFamilies.latinFallback(),
          ),
        ),
        SizedBox(height: AppSpacing.md),
        Text(
          body,
          textAlign: TextAlign.center,
          style: textTheme.bodyLarge?.copyWith(
            color: scheme.onSurfaceVariant,
            height: AppLineHeights.body,
            fontFamily: AppTypography.fontFamily,
            fontFamilyFallback: AppFontFamilies.latinFallback(),
          ),
        ),
      ],
    );
  }

  double _illustrationSize(double width) {
    if (width >= AppBreakpoints.expanded) {
      return AppSpacing.colossal * 2 + AppSpacing.md;
    }
    if (width >= AppBreakpoints.medium) {
      return AppSpacing.colossal * 2;
    }
    return AppSpacing.colossal + AppSpacing.xl;
  }
}

class _OnboardingIllustration extends StatelessWidget {
  const _OnboardingIllustration({
    required this.icon,
    required this.size,
    required this.gradient,
    required this.iconColor,
    required this.semanticLabel,
  });

  final IconData icon;
  final double size;
  final List<Color> gradient;
  final Color iconColor;
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    final iconSize = size * 0.44;

    return Semantics(
      label: semanticLabel,
      child: Material(
        elevation: AppSpacing.xs,
        shadowColor: gradient.first.withValues(alpha: 0.35),
        shape: RoundedRectangleBorder(borderRadius: AppRadius.borderXl),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: size,
          height: size,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: gradient,
              ),
            ),
            child: Center(
              child: Icon(
                icon,
                size: iconSize,
                color: iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
