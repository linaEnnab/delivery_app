import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/orders/presentation/pages/order_review_page.dart';
import 'package:go_router/go_router.dart';

/// Post-delivery review (`/orders/:orderId/review`).
abstract final class OrderReviewRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.orderReviewPattern,
        name: RouteNames.orderReview,
        builder: (context, state) {
          final id = state.pathParameters[RoutePaths.orderTrackingParam] ?? '';
          return OrderReviewPage(orderId: id);
        },
      );
}
