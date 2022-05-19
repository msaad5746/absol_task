import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key, this.name = '', this.value = 0})
      : super(key: key);

  final String name;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        verticalSpacer(10),
        Text(value.toString()),
      ],
    );
  }
}
