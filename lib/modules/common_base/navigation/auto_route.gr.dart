// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:it_navigator/modules/common_base/navigation/wrappers/login_page_route.dart'
    as _i1;
import 'package:it_navigator/modules/common_base/navigation/wrappers/onboarding_page_wrapper.dart'
    as _i2;
import 'package:it_navigator/modules/common_base/navigation/wrappers/register_page_wrapper.dart'
    as _i3;
import 'package:it_navigator/modules/common_base/navigation/wrappers/splash_page_wrapper.dart'
    as _i4;

/// generated route for
/// [_i1.LoginPageRoute]
class LoginPageRoute extends _i5.PageRouteInfo<void> {
  const LoginPageRoute({List<_i5.PageRouteInfo>? children})
      : super(LoginPageRoute.name, initialChildren: children);

  static const String name = 'LoginPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPageRoute();
    },
  );
}

/// generated route for
/// [_i2.OnboardingPageWrapper]
class OnboardingPageRoute extends _i5.PageRouteInfo<void> {
  const OnboardingPageRoute({List<_i5.PageRouteInfo>? children})
      : super(OnboardingPageRoute.name, initialChildren: children);

  static const String name = 'OnboardingPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingPageWrapper();
    },
  );
}

/// generated route for
/// [_i3.RegisterPageWrapper]
class RegisterPageRoute extends _i5.PageRouteInfo<void> {
  const RegisterPageRoute({List<_i5.PageRouteInfo>? children})
      : super(RegisterPageRoute.name, initialChildren: children);

  static const String name = 'RegisterPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.RegisterPageWrapper();
    },
  );
}

/// generated route for
/// [_i4.SplashPageWrapper]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute({List<_i5.PageRouteInfo>? children})
      : super(SplashPageRoute.name, initialChildren: children);

  static const String name = 'SplashPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPageWrapper();
    },
  );
}
