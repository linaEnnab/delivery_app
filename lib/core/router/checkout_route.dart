import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/checkout/presentation/models/delivery_address_editor_mode.dart';
import 'package:delivery_app/features/checkout/presentation/pages/checkout_page.dart';
import 'package:delivery_app/features/checkout/presentation/pages/delivery_address_page.dart';
import 'package:delivery_app/features/checkout/presentation/pages/order_success_page.dart';
import 'package:delivery_app/features/reward_wheel/presentation/pages/checkout_reward_wheel_page.dart';
import 'package:go_router/go_router.dart';

/// Checkout route (address, payment, totals, and order submission).
abstract final class CheckoutRoute {
  static GoRoute get goRoute => GoRoute(
        path: RoutePaths.checkout,
        name: RouteNames.checkout,
        builder: (context, state) => const CheckoutPage(),
        routes: [
          GoRoute(
            path: 'delivery-address',
            name: RouteNames.checkoutDeliveryAddress,
            builder: (context, state) {
              final extra = state.extra;
              final mode = extra is DeliveryAddressEditorMode
                  ? extra
                  : DeliveryAddressEditorMode.edit;
              return DeliveryAddressPage(mode: mode);
            },
          ),
          GoRoute(
            path: 'order-success',
            name: RouteNames.checkoutOrderSuccess,
            builder: (context, state) => const OrderSuccessPage(),
          ),
          GoRoute(
            path: 'reward-wheel',
            name: RouteNames.checkoutRewardWheel,
            builder: (context, state) => const CheckoutRewardWheelPage(),
          ),
        ],
      );
}
