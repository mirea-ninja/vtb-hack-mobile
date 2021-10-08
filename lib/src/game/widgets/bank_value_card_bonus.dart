import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BankValueCardBonus extends StatelessWidget {
  const BankValueCardBonus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 238,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
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
                  "Бонусный",
                  style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 16,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SvgPicture.asset('assets/icons/question_black.svg')
              ],
            ),
            const Text(
              "Кешбек",
              style: TextStyle(
                color: Color(0xff363636),
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
                  color: const Color(0xfff4f4f4),
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 9,
                ),
                child: const Text(
                  "425 \$",
                  style: TextStyle(
                    color: Color(0xff494949),
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              "44 458 ₽",
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 24,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  "+1 088 ₽",
                  style: TextStyle(
                    color: Color(0xff363636),
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
                      color: const Color(0xff929292),
                    ),
                  ),
                ),
                const Text(
                  "12,43 %",
                  style: TextStyle(
                    color: Color(0xff929292),
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
