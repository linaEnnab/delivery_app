import 'package:delivery_app/core/config/env/app_flavor.dart';
import 'package:delivery_app/core/config/env/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Immutable runtime environment configuration.
class EnvConfig {
  const EnvConfig({
    required this.flavor,
    required this.apiBaseUrl,
    required this.apiTimeout,
    required this.enableLogging,
  });

  final AppFlavor flavor;
  final String apiBaseUrl;
  final Duration apiTimeout;
  final bool enableLogging;

  bool get isDevelopment => flavor == AppFlavor.development;
  bool get isProduction => flavor == AppFlavor.production;

  static Future<EnvConfig> load({required AppFlavor flavor}) async {
    final assetPath = switch (flavor) {
      AppFlavor.development => 'assets/env/.env.development',
      AppFlavor.staging => 'assets/env/.env.staging',
      AppFlavor.production => 'assets/env/.env.production',
    };

    await dotenv.load(fileName: assetPath);

    return EnvConfig(
      flavor: flavor,
      apiBaseUrl: dotenv.get(EnvKeys.apiBaseUrl),
      apiTimeout: Duration(
        seconds: int.parse(dotenv.get(EnvKeys.apiTimeoutSeconds, fallback: '30')),
      ),
      enableLogging: dotenv.get(EnvKeys.enableLogging, fallback: 'false') == 'true',
    );
  }
}
