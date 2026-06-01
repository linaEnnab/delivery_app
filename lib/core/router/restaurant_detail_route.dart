import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:go_router/go_router.dart';

/// Restaurant menu / details (mock UI).
abstract final class RestaurantDetailRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.restaurantDetailPattern,
        name: RouteNames.restaurantDetail,
        builder: (context, state) {
          final restaurantId =
              state.pathParameters[RoutePaths.restaurantDetailParam]!;
          return RestaurantDetailPage(restaurantId: restaurantId);
        },
      );
}
