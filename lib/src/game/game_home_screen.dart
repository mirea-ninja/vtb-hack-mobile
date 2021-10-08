import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:vtb_hack_mobile/src/game/game_slider.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class GameHomeScreen extends StatelessWidget {
  const GameHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),body: GameSlider(body: SafeArea(
          child: Container(
              margin: Spacing.horizontal(24),
              child: ListView(
                children: <Widget>[
                  // Header
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(MySize.size8!)),
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        primary: Colors.white,
                                        elevation:
                                        0, // double.infinity is the width and 30 is the height
                                      ),
                                      child: Row(children: const [
                                        Padding(
                                            padding: EdgeInsets.only(right: 5.0),
                                            child: Icon(
                                              Icons.account_tree,
                                              color: Colors.blueAccent,
                                            )),
                                        Text(
                                          "Демо счет",
                                          style:
                                          TextStyle(color: Colors.blueAccent),
                                        ),
                                      ]),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(MySize.size10!),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            MySize.size8!),
                                        child: Icon(
                                          Icons.alarm,
                                          color: Colors.black,
                                          size: MySize.size20,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: MySize.size10!),
                                      padding: EdgeInsets.all(MySize.size10!),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            MySize.size8!),
                                        child: Icon(
                                          Icons.notification_add,
                                          color: Colors.black,
                                          size: MySize.size20,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: MySize.size10!),
                                      padding: EdgeInsets.all(MySize.size10!),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  MySize.size8!))),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            MySize.size8!),
                                        child: Icon(
                                          Icons.filter_alt,
                                          color: Colors.black,
                                          size: MySize.size20,
                                        ),
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
                  ),
                  // Balances
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(right: 12),
                                height: 240,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(25, 50, 172, 1),
                                    border: Border.all(
                                      color: Color.fromRGBO(25, 50, 172, 1),
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ИИС",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      "Основной",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Spacer(),
                                    Consumer<InvestBalance>(
                                      builder: (context, balance, child) {
                                        return Text(
                                          "${balance.balance.toStringAsFixed(0)} Р",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 26),
                                        );
                                      },
                                    ),
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(15),
                                height: 240,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Бонусный",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    Text(
                                      "Кэшбек",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    Spacer(),
                                    Text(
                                      "0 Р",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 26),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 50, 172, 1),
                        borderRadius:
                        BorderRadius.all(Radius.circular(MySize.size8!))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ваш кэшбек работает на вас!",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Подключите кешбек пополнение инвестиционного счета с дебитовой или кредитной карты, и зарабатывайте на инвестициях!",
                            style:
                            TextStyle(fontSize: 12, color: Colors.white))
                      ],
                    ),
                  ),
                ],
              )),
        )));
  }
}
