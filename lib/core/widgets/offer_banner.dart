import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_shadows.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:flutter/material.dart';

/// Promo strip — [AppColors.promoBanner], [AppRadius], [AppShadows], RTL chevron.
class OfferBanner extends StatelessWidget {
  const OfferBanner({
    required this.title,
    super.key,
    this.subtitle,
    this.onTap,
    this.leadingIcon = Icons.local_offer_rounded,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    final trailingIcon = isRtl
        ? Icons.chevron_left_rounded
        : Icons.chevron_right_rounded;

    final titleStyle = theme.textTheme.titleMedium?.copyWith(
      color: AppColors.onPrimary,
      fontFamily: AppTypography.fontFamily,
      fontFamilyFallback: AppFontFamilies.latinFallback(),
    );
    final subtitleStyle = theme.textTheme.bodySmall?.copyWith(
      color: AppColors.onPrimary.withValues(alpha: 0.92),
      fontFamily: AppTypography.fontFamily,
      fontFamilyFallback: AppFontFamilies.latinFallback(),
    );

    return Container(
      decoration: BoxDecoration(
        color: AppColors.promoBanner,
        borderRadius: AppRadius.borderLg,
        boxShadow: AppShadows.cardElevated(brightness),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            child: Row(
              children: [
                Icon(
                  leadingIcon,
                  color: AppColors.onPrimary,
                  size: AppSpacing.xxl,
                ),
                SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: titleStyle),
                      if (subtitle != null && subtitle!.isNotEmpty) ...[
                        SizedBox(height: AppSpacing.xxs),
                        Text(subtitle!, style: subtitleStyle),
                      ],
                    ],
                  ),
                ),
                if (onTap != null) ...[
                  SizedBox(width: AppSpacing.sm),
                  Icon(
                    trailingIcon,
                    color: AppColors.onPrimary,
                    size: AppSpacing.xl,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
