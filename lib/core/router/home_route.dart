import 'package:delivery_app/features/home/presentation/pages/home_page.dart';
import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

/// Signed-in home route.
abstract final class HomeRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.home,
        name: RouteNames.home,
        builder: (_, _) => const HomePage(),
      );
}
