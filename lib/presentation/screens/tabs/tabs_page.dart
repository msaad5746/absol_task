import 'package:flutter/material.dart';
import 'package:absol_task/export.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Tabs extends GetView<TabsController> {
  Tabs({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> tabs = [
    HomePage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: _scaffoldKey,
        body: tabs[controller.tabIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: colors.accentSecondary,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  assets.icHomeInactive,
                ),
                activeIcon: SvgPicture.asset(
                  assets.icHome,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  assets.icSearchInactive,
                ),
                activeIcon: SvgPicture.asset(
                  assets.icSearch,
                ),
                label: ''),
          ],
          currentIndex: controller.tabIndex.value,
          onTap: (pageIndex) {
            controller.onChangeTab(pageIndex);
          },
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
