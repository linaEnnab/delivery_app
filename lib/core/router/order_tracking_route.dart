import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/orders/presentation/pages/order_tracking_page.dart';
import 'package:go_router/go_router.dart';

/// Full-screen order tracking (`/orders/:orderId/tracking`).
abstract final class OrderTrackingRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.orderTrackingPattern,
        name: RouteNames.orderTracking,
        builder: (context, state) {
          final id = state.pathParameters[RoutePaths.orderTrackingParam] ?? '';
          return OrderTrackingPage(orderId: id);
        },
      );
}
