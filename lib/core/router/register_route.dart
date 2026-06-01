import 'package:delivery_app/features/auth/presentation/pages/register_page.dart';
import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

/// Customer registration route.
abstract final class RegisterRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.register,
        name: RouteNames.register,
        builder: (_, _) => const RegisterPage(),
      );
}
