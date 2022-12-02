
import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/navigation/navigation_constants.dart';
import 'package:flutter_meditation_app/view/home/home_view.dart';
import 'package:flutter_meditation_app/view/not_found/not_found_view.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(const HomeView(), NavigationConstants.DEFAULT);

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundView(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
