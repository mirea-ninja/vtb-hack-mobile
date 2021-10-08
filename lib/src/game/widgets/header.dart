import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class GameHomeHeader extends StatelessWidget {
  const GameHomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(MySize.size8!)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ]),
                  )),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(MySize.size10!),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(MySize.size8!),
                            child: SvgPicture.asset(
                                'assets/icons/time_black.svg')),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: MySize.size10!),
                        padding: EdgeInsets.all(MySize.size10!),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(MySize.size8!),
                            child: SvgPicture.asset('assets/icons/bell.svg')),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: MySize.size10!),
                        padding: EdgeInsets.all(MySize.size10!),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(MySize.size8!))),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(MySize.size8!),
                            child: SvgPicture.asset(
                                'assets/icons/filter_big.svg')),
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
