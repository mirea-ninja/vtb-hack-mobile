import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class FullWidthButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const FullWidthButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: Colors.white,
        elevation: 0,
        minimumSize: Size(double.infinity, MySize.size52!), // double.infinity is the width and 30 is the height
      ),
      onPressed: onPressed,
      child: Text(text, style:
      TextStyle(color: Colors.blueAccent, fontSize: MySize.size18),),
    );
  }
}