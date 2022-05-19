import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppRoutes {
  final arg;

  AppRoutes({this.arg});

  static List<GetPage> getPage = [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => Splash(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteNames.tabs,
      page: () => Tabs(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteNames.searchScreen,
      page: () => HomePage(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: RouteNames.detailsScreen,
      page: () =>DetailsPage(),
      binding: DetailsBinding(),
    ),

  ];

  static Future<dynamic>? appRoutes(final String routeName, {arg}) {
    switch (routeName) {
      //push to next
      case RouteNames.splashScreen:
      case RouteNames.detailsScreen:
      case RouteNames.searchScreen:
        return Get.toNamed(routeName, arguments: arg);

      //clear all and push
      case RouteNames.tabs:
      case RouteNames.homeScreen:
        return Get.offAllNamed(routeName, arguments: arg);

      default:
        return _errorRoute();
    }
  }

  static Future<dynamic>? _errorRoute() {
    return Get.to(Container());
  }
}
