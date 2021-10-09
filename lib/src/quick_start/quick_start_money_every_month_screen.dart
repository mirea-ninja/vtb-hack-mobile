import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/easy_start/easy_start_screen.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';
import 'package:vtb_hack_mobile/src/providers/money_value.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/money_value_changer.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuickStartMoneyEveryMonthScreen extends StatelessWidget {
  const QuickStartMoneyEveryMonthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moneyProvider = Provider.of<MoneyValue>(context);
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
              Text(
                moneyProvider.maxBalance.toString(),
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
              FullWidthButton(text: 'Продолжить', onPressed: () {
                if (Provider.of<InvestBalance>(context, listen: false).balance > 0) {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const EasyStartScreen()),
                  );
                } else {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Не осталось денег для инвестиций'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget>[
                              Text('Пожалуйста решите сколько вы хотите инвестировать'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('ОК'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
