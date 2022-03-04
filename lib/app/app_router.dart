import 'dart:io';

import 'package:cricket/home/home.dart';
import 'package:cricket/landing/landing.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutePages {
  static const String landing = '/';
  static const String home = '/home';
  static const String slider = '/slider';
}

class AppRouter {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutePages.landing:
        return platformPageRoute<dynamic>(
          builder: (_) => const LandingPage(),
        );
      case RoutePages.home:
        return platformPageRoute<dynamic>(
          builder: (_) => const HomePage(),
        );
      default:
        return platformPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'Oops you lost your ways',
                style: CsTextStyle.bodyText1,
              ),
            ),
          ),
        );
    }
  }
}

PageRoute<T> platformPageRoute<T>({
  required WidgetBuilder builder,
  RouteSettings? settings,
  bool fullscreenDialog = false,
  String? iosTitle,
}) {
  if (Platform.isAndroid) {
    return MaterialPageRoute<T>(
      builder: builder,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    );
  } else {
    return CupertinoPageRoute<T>(
      builder: builder,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
      title: iosTitle,
    );
  }
}

extension AppRouteX on BuildContext {
  void replace(String routeName) =>
      Navigator.pushReplacementNamed(this, routeName);
  void go(String routeName, {Object? args}) =>
      Navigator.pushNamed(this, routeName, arguments: args);
  void offAndGo(String routeName, {Object? args}) =>
      Navigator.popAndPushNamed(this, routeName, arguments: args);
}
