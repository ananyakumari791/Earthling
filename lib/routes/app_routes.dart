import 'package:flutter/material.dart';
import 'package:earthlings/presentation/iphone_13_14_one_screen/iphone_13_14_one_screen.dart';
import 'package:earthlings/presentation/iphone_13_14_two_screen/iphone_13_14_two_screen.dart';
import 'package:earthlings/presentation/iphone_13_14_three_screen/iphone_13_14_three_screen.dart';
import 'package:earthlings/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1314OneScreen = '/iphone_13_14_one_screen';

  static const String iphone1314TwoScreen = '/iphone_13_14_two_screen';

  static const String iphone1314ThreeScreen = '/iphone_13_14_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1314OneScreen: (context) => Iphone1314OneScreen(),
    iphone1314TwoScreen: (context) => Iphone1314TwoScreen(),
    iphone1314ThreeScreen: (context) => Iphone1314ThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
