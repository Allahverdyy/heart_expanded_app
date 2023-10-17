// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:heart_expanded_app/app/views/view_heart_expanded/heart_expanded_view.dart'
    as _i1;
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart'
    as _i2;
import 'package:heart_expanded_app/app/views/view_heart_screen2/heart_expanded_screen2_view.dart'
    as _i4;
import 'package:heart_expanded_app/app/views/view_heart_screen3/heart_expanded_screen3_view.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    ExpandedDemoRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ExpandedDemoView(),
      );
    },
    HeartScreenOneRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HeartScreenOneView(),
      );
    },
    HeartScreenThreeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HeartScreenThreeView(),
      );
    },
    HeartScreenTwoRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HeartScreenTwoView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ExpandedDemoView]
class ExpandedDemoRoute extends _i5.PageRouteInfo<void> {
  const ExpandedDemoRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ExpandedDemoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpandedDemoRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HeartScreenOneView]
class HeartScreenOneRoute extends _i5.PageRouteInfo<void> {
  const HeartScreenOneRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HeartScreenOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'HeartScreenOneRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HeartScreenThreeView]
class HeartScreenThreeRoute extends _i5.PageRouteInfo<void> {
  const HeartScreenThreeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HeartScreenThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HeartScreenThreeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HeartScreenTwoView]
class HeartScreenTwoRoute extends _i5.PageRouteInfo<void> {
  const HeartScreenTwoRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HeartScreenTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'HeartScreenTwoRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
