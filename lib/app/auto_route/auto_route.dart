import 'package:auto_route/auto_route.dart';
import 'package:portfolio_personal/app/auto_route/auto_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: RouteDashboard.page,
          path: '/',
        ),
      ];
}
