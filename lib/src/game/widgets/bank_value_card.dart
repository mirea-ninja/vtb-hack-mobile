import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BankValueCard extends StatelessWidget {
  const BankValueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 178,
      height: 238,
      child: Stack(
        children: [
          Container(
            width: 178,
            height: 238,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x05000000),
                  blurRadius: 32,
                  offset: Offset(0, 4),
                ),
              ],
              color: const Color(0xff225fda),
            ),
          ),
          Positioned.fill(
            right: -50,
            top: 29.15,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Opacity(
                opacity: 0.10,
                child: Container(
                  width: 158,
                  height: 158.83,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f9f9),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: -10,
            left: 0,
            right: -100,
            bottom: 100,
            child: Opacity(
              opacity: 0.10,
              child: Container(
                width: 158,
                height: 158.83,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff9f9f9),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 178,
            height: 238,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "ИИС",
                        style: TextStyle(
                          color: Color(0xfffefefe),
                          fontSize: 16,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SvgPicture.asset('assets/icons/question.svg')
                    ],
                  ),
                  const Text(
                    "Основной",
                    style: TextStyle(
                      color: Color(0xfffefefe),
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  UnconstrainedBox(
                    child: Container(
                      alignment: Alignment.center,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff4576e4),
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 9,
                      ),
                      child: const Text(
                        "148 558 \$",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    "33 379 588 ₽",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        "+9 588 ₽",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          width: 2.42,
                          height: 2.42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      const Text(
                        "12,43 %",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
