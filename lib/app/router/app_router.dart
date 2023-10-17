import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ExpandedDemoRoute.page, initial: true),
        AutoRoute(page: HeartScreenOneRoute.page),
        AutoRoute(page: HeartScreenTwoRoute.page),
        AutoRoute(page: HeartScreenThreeRoute.page),
      ];
}
