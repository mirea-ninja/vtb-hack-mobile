import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/game/game_home_screen.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_portfel_screen.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuizWhatYearScreen extends StatefulWidget {
  QuizWhatYearScreen({Key? key}) : super(key: key);

  @override
  State<QuizWhatYearScreen> createState() => _QuizWhatYearScreen();
}

class _QuizWhatYearScreen extends State<QuizWhatYearScreen> {
  double _value = 1;

  final List<int> _chartData = <int>[1, 3, 5, 10];

  List<int> getCurrentInterval() {
    return [
      _chartData[_value.toInt()] ~/ 1000,
      _chartData[_value.toInt() + 1] ~/ 1000
    ];
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GameHomeScreen()),
                        );
                      },
                      child: const Text(
                        "Назад",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text(
                      "6/7",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: MySize.size24),
                Text(
                  "На какой срок вы готовы вложить деньги?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MySize.size16),
                Text(
                  "Мы поможем вам инвестировать выгодно в долгосрочной перспективе",
                  style:
                      TextStyle(color: Colors.white, fontSize: MySize.size14),
                ),
                const Spacer(),
                Center(
                  child: Text(
                    "${getCurrentInterval()[1]} год",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SfSlider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  min: 0,
                  max: 3,
                  value: _value,
                  interval: 1,
                  showTicks: true,
                  showLabels: false,
                  enableTooltip: false,
                  stepSize: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                const Spacer(),
                FullWidthButton(
                  text: "Продолжить",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPortfelScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
