import 'package:delivery_app/core/config/env/app_flavor.dart';
import 'package:delivery_app/core/config/env/env_config.dart';
import 'package:delivery_app/core/config/env/env_provider.dart';
import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/router/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

/// Root overrides wired during [bootstrap].
List<Override> createAppOverrides({
  required AppFlavor flavor,
  required EnvConfig env,
  required Dio dio,
  required Logger logger,
}) {
  return [
    appFlavorProvider.overrideWithValue(flavor),
    envConfigProvider.overrideWithValue(env),
    dioProvider.overrideWithValue(dio),
    loggerProvider.overrideWithValue(logger),
  ];
}

/// Convenience accessor for router from widgets / listeners.
final appRouterProvider = goRouterProvider;
