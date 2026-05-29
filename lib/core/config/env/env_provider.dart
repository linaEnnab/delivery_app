import 'package:delivery_app/core/config/env/app_flavor.dart';
import 'package:delivery_app/core/config/env/env_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appFlavorProvider = Provider<AppFlavor>((ref) {
  throw UnimplementedError('AppFlavor must be overridden at bootstrap');
});

final envConfigProvider = Provider<EnvConfig>((ref) {
  throw UnimplementedError('EnvConfig must be overridden at bootstrap');
});
