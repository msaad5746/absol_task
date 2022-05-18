import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initializerPage = '/';
  static const String homePage = '/homePage';

  static appRoutes(final RouteSettings settings,
      BuildContext context) {
    switch (settings.name) {
      case homePage:
        openHomePage(context);
        break;

      default:
        throw UnimplementedError('Route is not implemented!');
    }
  }
}
  void openHomePage(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppRoutes.homePage,
    );
  }

