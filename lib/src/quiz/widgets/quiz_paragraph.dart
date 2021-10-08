import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuizParagraph extends StatelessWidget {
  final String text;
  const QuizParagraph({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(color: Colors.white, fontSize: MySize.size18),
    );
  }
}
