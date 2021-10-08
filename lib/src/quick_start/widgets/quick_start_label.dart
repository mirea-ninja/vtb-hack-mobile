import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuickStartLabel extends StatelessWidget {
  const QuickStartLabel(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.textColor})
      : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MySize.size8!),
        height: 29,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: backgroundColor),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
