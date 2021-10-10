import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';
import 'package:vtb_hack_mobile/src/providers/money_value.dart';

class MoneyValueChanger extends StatelessWidget {
  const MoneyValueChanger({Key? key, required this.goalIndex})
      : super(key: key);

  final int goalIndex;

  _setInvestBalance(double value) {

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: const Color(0xff2a64e3),
            elevation: 0,
            minimumSize: const Size(
                65, 52), // double.infinity is the width and 30 is the height
          ),
          onPressed: () {
            Provider.of<MoneyValue>(context, listen: false)
                .changeGoalsValues(goalIndex, -10000);
            Provider.of<InvestBalance>(context, listen: false).balance = Provider.of<MoneyValue>(context, listen: false).investBalance;
          },
          child: const Text(
            "-",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff2a66e9),
              ),
              child: Consumer<MoneyValue>(
                builder: (ctx, x, child) {
                  return Text(
                    x.goalsValues[goalIndex].toStringAsFixed(0) + ' ₽',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  );
                },
                child: const Text(
                  '0 ₽',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: const Color(0xff2a64e3),
            elevation: 0,
            minimumSize: const Size(
                65, 52), // double.infinity is the width and 30 is the height
          ),
          onPressed: () {
            Provider.of<MoneyValue>(context, listen: false)
                .changeGoalsValues(goalIndex, 10000);
            Provider.of<InvestBalance>(context, listen: false).balance = Provider.of<MoneyValue>(context, listen: false).investBalance;

          },
          child: const Text(
            "+",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
