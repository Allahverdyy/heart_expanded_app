import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: SplashRoute.page),
        AutoRoute(page: HomeRoute.page),
        // AutoRoute(page: ExpandedDemoRoute.page),
        AutoRoute(page: HeartScreenOneRoute.page),
        AutoRoute(page: HeartScreenTwoRoute.page),
        AutoRoute(page: HeartScreenThreeRoute.page),
      ];
}
