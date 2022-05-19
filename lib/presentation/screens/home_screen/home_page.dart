import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colors.primaryLight,
      body: controller.obx(
        (state) => getBody(context),
        onLoading: const LoadingState(),
        onEmpty: const EmptyState(),
      ),
    );
  }

  Widget getBody(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return HomeItem(
              name: 'WORLD',
              value: controller.data.global!.totalConfirmed,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            );
          }
          return HomeItem(
            name: controller.data.countries![index-1].country,
            value: controller.data.countries![index-1].totalConfirmed,
          );
        },
        separatorBuilder: (context, index) => Divider(
              height: 1,
              indent: 0,
              endIndent: 0,
              color: colors.background,
            ),
        itemCount: controller.data.countries!.length + 1);
  }
}
