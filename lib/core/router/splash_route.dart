import 'package:delivery_app/core/router/pages/splash_page.dart';
import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

/// Splash entry route.
abstract final class SplashRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        builder: (_, _) => const SplashPage(),
      );
}
