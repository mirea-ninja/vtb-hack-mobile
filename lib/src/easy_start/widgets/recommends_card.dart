import 'package:flutter/material.dart';

class RecommendsCard extends StatelessWidget {
  const RecommendsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.20,
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffd4dce2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 266,
                  height: 23,
                  child: Text(
                    "Умеренный",
                    style: TextStyle(
                      color: Color(0xff373737),
                      fontSize: 18,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "50% акций, 50% облигаций",
                  style: TextStyle(
                    color: Color(0xff373737),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  alignment: Alignment.center,
                  width: 128,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff225ad6),
                  ),
                  child: const Text(
                    "Подходит для вас!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
