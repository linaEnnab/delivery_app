import 'package:delivery_app/features/auth/presentation/pages/login_page.dart';
import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

/// Customer login route.
abstract final class LoginRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.login,
        name: RouteNames.login,
        builder: (_, _) => const LoginPage(),
      );
}
