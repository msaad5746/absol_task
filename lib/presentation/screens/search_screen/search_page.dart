import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryLight,
      body: controller.obx(
        (state) => getBody(context),
        onLoading: const LoadingState(),
        onEmpty: const EmptyState(),
      ),
    );
  }

  Widget getBody(BuildContext context) {
    return Column(
      children: [
        verticalSpacer(60),
        inputField(controller.searchController),
      ],
    );
  }

  Widget inputField(textController) => Container(
        height: sizes.heightRatio * 50,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colors.colorGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(assets.icSearchDark),
            horizontalSpacer(20),
            Expanded(
              child: TextFormField(
                autofocus: false,
                controller: textController,
                onChanged: (value) => controller.onSearch(value),
                decoration: InputDecoration(
                  hintText: 'Search',
                  focusColor: colors.accentPrimary,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      );
}
