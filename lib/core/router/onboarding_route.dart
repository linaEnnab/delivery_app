import 'package:delivery_app/core/router/pages/onboarding_page.dart';
import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

/// First-launch onboarding route.
abstract final class OnboardingRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.onboarding,
        name: RouteNames.onboarding,
        builder: (_, _) => const OnboardingPage(),
      );
}
