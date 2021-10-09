import 'package:flutter/material.dart';

class CircleNumberIcon extends StatelessWidget {
  const CircleNumberIcon({Key? key, required this.number}) : super(key: key);
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 41,
      height: 41,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xff225ad6),
          width: 2,
        ),
      ),
      child: Text(
        number.toString(),
        style: const TextStyle(
          color: Color(0xff225ad6),
          fontSize: 18,
          fontFamily: "Rubik",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
