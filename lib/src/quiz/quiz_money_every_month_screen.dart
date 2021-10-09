import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/money_value_changer.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuizMoneyEveryMonthScreen extends StatelessWidget {
  const QuizMoneyEveryMonthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 90, 214, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(MySize.size30!),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 221,
                child: Text(
                  "Ежемесячно \nу вас есть",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "70 000 ₽",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 39,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Какие планы на месяц?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 38),
              const Text(
                "Инвестиции",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "Ваша стартовая сумма, увеличите её?",
                style: TextStyle(
                  color: Color(0xff739eff),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 15),
              const MoneyValueChanger(goalIndex: 0),
              const SizedBox(height: 25),
              const Text(
                "Отдых",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              const MoneyValueChanger(goalIndex: 1),
              const SizedBox(height: 25),
              const Text(
                "Дом",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              const MoneyValueChanger(goalIndex: 2),
              const SizedBox(height: 25),
              const Text(
                "Покупки",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              const MoneyValueChanger(goalIndex: 3),
              const Spacer(),
              FullWidthButton(text: 'Продолжить', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
