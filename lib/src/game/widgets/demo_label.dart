import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DemoLabel extends StatelessWidget {
  const DemoLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 128,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/vtb.svg'),
          const SizedBox(width: 13),
          const Text(
            "Демо счет",
            style: TextStyle(
              color: Color(0xff3756df),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
