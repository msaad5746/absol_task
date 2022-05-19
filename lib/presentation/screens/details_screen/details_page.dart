import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

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

  getBody(BuildContext context) {
    return Column(
      children: [
        Header(
          name: controller.data.country!,
          onBack: controller.onBack,
        ),
        verticalSpacer(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: sizes.width / 2,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailItem(
                name: 'TOTAL CASES',
                value: controller.data.totalConfirmed!,
              ),
            ),
            DetailItem(
              name: 'TOTAL DEATHS',
              value: controller.data.totalDeaths!,
            ),
          ],
        ),
        verticalSpacer(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: sizes.width / 2,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailItem(
                name: 'NEW CASES',
                value: controller.data.newConfirmed!,
              ),
            ),
            DetailItem(
              name: 'NEW CASES',
              value: controller.data.newDeaths!,
            ),
          ],
        ),
        verticalSpacer(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: sizes.width / 2,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailItem(
                name: 'NEW RECOVERED',
                value: controller.data.newRecovered!,
              ),
            ),
            DetailItem(
              name: 'TOTAL RECOVERED',
              value: controller.data.totalRecovered!,
            ),
          ],
        )
      ],
    );
  }
}
