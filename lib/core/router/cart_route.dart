import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/cart/presentation/pages/cart_page.dart';
import 'package:go_router/go_router.dart';

/// Shopping cart route (mock checkout).
abstract final class CartRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.cart,
        name: RouteNames.cart,
        builder: (context, state) => const CartPage(),
      );
}
