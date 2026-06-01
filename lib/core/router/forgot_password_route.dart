import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:go_router/go_router.dart';

/// Forgot password route (placeholder flow until API is wired).
abstract final class ForgotPasswordRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.forgotPassword,
        name: RouteNames.forgotPassword,
        builder: (_, _) => const ForgotPasswordPage(),
      );
}
