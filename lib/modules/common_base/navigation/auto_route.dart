import 'package:auto_route/auto_route.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Wrapper,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: SplashPageRoute.page,
      path: RoutesPath.splash,
      initial: true,
    ),
    AutoRoute(
      page: OnboardingPageRoute.page,
      path: RoutesPath.onboarding,
    ),
    AutoRoute(
      page: LoginPageRoute.page,
      path: RoutesPath.login,
    ),
    AutoRoute(
      page: RegisterPageRoute.page,
      path: RoutesPath.register,
    ),
  ];
}
