import 'package:flutter/material.dart';

class AppColors {
  AppColors(
      {this.clubColor = const Color(0xFF43F98D),
      this.clubTabBarColor = const Color(0xFF5CE27F)});

  Color clubColor;
  Color clubTabBarColor;

  //Primary colors
  final primaryDark = Color(0xFF171A25);
  final primaryLight = Color(0xFFF9F9FA);
  final background = Color(0xFF000518);

  //Secondary
  final secondary900 = Color(0xFF31343F);
  final secondary800 = Color(0xFF5E616E);
  final secondary600 = Color(0xFF9194A1);
  final secondary400 = Color(0xFFC8CAD0);
  final secondary200 = Color(0xFFE3E4E8);
  final secondary = Color(0xFF2A2D3C);
  final inputTextHint = Color(0xFF878895);

  //Accent
  final accentPrimary = Color(0xFF43F98D);
  final accentSecondary = Color(0xFF5CE27F);

  //Other
  final tieYellow = Color(0xFFF5C324);
  final error = Color(0xFFFF453A);
  final facebookButton = Color(0xFF1877F2);
  final colorGrey = Color.fromRGBO(158, 158, 158, 1);

  final Color naturalWhite = Color(0xffFFFFFF);
  final Color systemBlueLight = Color(0xff007aff);

  //TODO: remove these after confirming from the Made Team.
  final Color greyShadow = Color(0xff717171);
  final Color greenColor = Color(0xff59B15E);

  final Color spiderGraphColor5 = Color(0xff262934);
  final Color spiderGraphColor4 = Color(0xff383B47);
  final Color spiderGraphColor3 = Color(0xff4A4D58);
  final Color spiderGraphColor2 = Color(0xff575A65);
  final Color spiderGraphColor1 = Color(0xff60636D);
  final Color spiderGraphColor6 = Color(0xff686A75);
  final Color spiderGraphColor7 = Color(0xff6C6F7A);
}
