import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class VideoTipsScreen extends StatelessWidget {
  const VideoTipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                const Text(
                  "Пропустить",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 29,
                  height: 29,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: const Color(0xff225ad6),
                      ),
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 7,
                        top: 6,
                        bottom: 7,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 418,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x267e7e7e),
                      blurRadius: 250,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: const Color(0xff225ad6),
                ),
                child: Padding(
                    padding: EdgeInsets.all(MySize.size30!),
                    child: Column(
                      children: [
                        const Text(
                          "Почему каждому важно начать инвестировать",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        const Text(
                          "Мы расскажем, как найти баланс в инвестициях и минимизировать риски.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
