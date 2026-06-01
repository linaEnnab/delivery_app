import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/reward_wheel/presentation/pages/reward_wheel_page.dart';
import 'package:go_router/go_router.dart';

/// Reward wheel history hub (`/rewards/wheel`).
abstract final class RewardWheelRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.rewardWheel,
        name: RouteNames.rewardWheel,
        builder: (context, state) => const RewardWheelPage(),
      );
}
