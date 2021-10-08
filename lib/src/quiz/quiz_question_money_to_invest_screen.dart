import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/game/game_home_screen.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/quiz_options_list_view.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

import 'models/quiz_option.dart';

class QuizQuestionMoneyToInvestScreen extends StatefulWidget {
  QuizQuestionMoneyToInvestScreen({Key? key}) : super(key: key);

  @override
  State<QuizQuestionMoneyToInvestScreen> createState() => _QuizQuestionMoneyToInvestScreenState();
}

class _QuizQuestionMoneyToInvestScreenState extends State<QuizQuestionMoneyToInvestScreen> {
  double _value = 1000;

  final List<int> _chartData = <int>[
    1000,
    10000,
    20000,
    30000,
    50000,
    100000,
    200000,
    300000,
    500000
  ];

  _saveBalance(double sum) {
    Provider.of<InvestBalance>(context, listen: false).changeBalance(sum);
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
                      onPressed: () {},
                      child: const Text(
                        "Пропустить",
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
                  "Сколько вы хотите инвестировать",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MySize.size16),
                Text(
                  "Вы начнете игру с начальным балансом",
                  style:
                      TextStyle(color: Colors.white, fontSize: MySize.size14),
                ),
                SizedBox(height: 50,),
                SfSlider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white70,
                  min: _chartData.first,
                  max: _chartData.last,
                  value: _value,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  stepSize: 1000,
                  minorTicksPerInterval: 100,
                  onChanged: (dynamic value){
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                const Spacer(),
                FullWidthButton(
                  text: "Продолжить",
                  onPressed: () {
                    _saveBalance(_value);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GameHomeScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
