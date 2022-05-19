import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String? name;
  final int? value;
  final double fontSize;
  final FontWeight fontWeight;

  const HomeItem({
    Key? key,
    this.name = '',
    required this.value,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name!,
            style: TextStyle(
              fontSize: sizes.fontRatio * fontSize,
              fontWeight: fontWeight,
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: sizes.fontRatio * fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
