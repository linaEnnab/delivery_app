import 'package:delivery_app/app.dart';
import 'package:delivery_app/core/config/env/app_flavor.dart';
import 'package:delivery_app/core/config/env/env_config.dart';
import 'package:delivery_app/core/di/app_providers.dart';
import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/startup/onboarding_completion_provider.dart';
import 'package:delivery_app/core/storage/token_storage.dart';
import 'package:delivery_app/core/theme/theme_mode_provider.dart';
import 'package:delivery_app/features/auth/presentation/providers/auth_session_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

/// Initializes environment, DI, and launches the app.
Future<void> bootstrap({AppFlavor flavor = AppFlavor.development}) async {
  WidgetsFlutterBinding.ensureInitialized();

  final env = await EnvConfig.load(flavor: flavor);
  final logger = Logger(
    printer: PrettyPrinter(methodCount: 0),
    level: env.enableLogging ? Level.debug : Level.warning,
  );

  final tokenStorage = SecureTokenStorage(
    const FlutterSecureStorage(),
  );

  final dio = createDioClient(
    env: env,
    tokenStorage: tokenStorage,
    logger: logger,
  );

  final container = ProviderContainer(
    overrides: createAppOverrides(
      flavor: flavor,
      env: env,
      dio: dio,
      logger: logger,
    ),
  );

  await container.read(themeModeProvider.notifier).loadSavedTheme();
  await container
      .read(onboardingCompletedNotifierProvider.notifier)
      .hydrateFromPrefs();
  await container.read(authSessionNotifierProvider.notifier).restoreFromStorage();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const DeliveryApp(),
    ),
  );
}
