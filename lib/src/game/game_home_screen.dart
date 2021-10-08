import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card_bonus.dart';
import 'package:vtb_hack_mobile/src/game/widgets/demo_label.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class GameHomeScreen extends StatelessWidget {
  const GameHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SlidingUpPanel(
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        header: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.alarm), Text("Машина времени")],
            )),
        body: SafeArea(
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
                          child: Padding(
                            padding: const EdgeInsets.only(top: 21),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const DemoLabel(),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(MySize.size10!),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              MySize.size8!),
                                          child: SvgPicture.asset(
                                              'assets/icons/time_black.svg')),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: MySize.size10!),
                                      padding: EdgeInsets.all(MySize.size10!),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              MySize.size8!),
                                          child: SvgPicture.asset(
                                              'assets/icons/bell.svg')),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: MySize.size10!),
                                      padding: EdgeInsets.all(MySize.size10!),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(MySize.size8!))),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              MySize.size8!),
                                          child: SvgPicture.asset(
                                              'assets/icons/filter_big.svg')),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Balances
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BankValueCard(),
                    BankValueCardBonus(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
