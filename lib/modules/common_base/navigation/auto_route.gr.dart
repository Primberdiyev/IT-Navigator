// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:it_navigator/modules/auth/di/auth_di_module.dart' as _i3;
import 'package:it_navigator/modules/common_base/navigation/wrappers/home_page_wrapper.dart'
    as _i1;
import 'package:it_navigator/modules/common_base/navigation/wrappers/login_page_route.dart'
    as _i2;
import 'package:it_navigator/modules/common_base/navigation/wrappers/onboarding_page_wrapper.dart'
    as _i4;
import 'package:it_navigator/modules/common_base/navigation/wrappers/register_page_wrapper.dart'
    as _i5;
import 'package:it_navigator/modules/common_base/navigation/wrappers/splash_page_wrapper.dart'
    as _i6;

/// generated route for
/// [_i1.HomePageWrapper]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute({List<_i7.PageRouteInfo>? children})
      : super(HomePageRoute.name, initialChildren: children);

  static const String name = 'HomePageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePageWrapper();
    },
  );
}

/// generated route for
/// [_i2.LoginPageRoute]
class LoginPageRoute extends _i7.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({
    _i8.Key? key,
    _i3.AuthDiModule module = const _i3.AuthDiModule(),
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginPageRoute.name,
          args: LoginPageRouteArgs(key: key, module: module),
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginPageRouteArgs>(
        orElse: () => const LoginPageRouteArgs(),
      );
      return _i2.LoginPageRoute(key: args.key, module: args.module);
    },
  );
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key, this.module = const _i3.AuthDiModule()});

  final _i8.Key? key;

  final _i3.AuthDiModule module;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key, module: $module}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginPageRouteArgs) return false;
    return key == other.key && module == other.module;
  }

  @override
  int get hashCode => key.hashCode ^ module.hashCode;
}

/// generated route for
/// [_i4.OnboardingPageWrapper]
class OnboardingPageRoute extends _i7.PageRouteInfo<void> {
  const OnboardingPageRoute({List<_i7.PageRouteInfo>? children})
      : super(OnboardingPageRoute.name, initialChildren: children);

  static const String name = 'OnboardingPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.OnboardingPageWrapper();
    },
  );
}

/// generated route for
/// [_i5.RegisterPageWrapper]
class RegisterPageRoute extends _i7.PageRouteInfo<void> {
  const RegisterPageRoute({List<_i7.PageRouteInfo>? children})
      : super(RegisterPageRoute.name, initialChildren: children);

  static const String name = 'RegisterPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.RegisterPageWrapper();
    },
  );
}

/// generated route for
/// [_i6.SplashPageWrapper]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute({List<_i7.PageRouteInfo>? children})
      : super(SplashPageRoute.name, initialChildren: children);

  static const String name = 'SplashPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashPageWrapper();
    },
  );
}
