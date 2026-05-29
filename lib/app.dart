import 'package:delivery_app/core/di/app_providers.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/core/theme/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Root application widget — theme and routing only (no feature UI).
class DeliveryApp extends ConsumerWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      // RTL-first marketplace: Arabic default locale drives directional layout.
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
