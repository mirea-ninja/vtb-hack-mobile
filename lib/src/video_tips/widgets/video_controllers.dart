import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class VideoControllers extends StatefulWidget {
  VideoControllers(
      {Key? key, required this.onPlayClick, required this.isPlaying})
      : super(key: key);

  final Function onPlayClick;
  bool isPlaying = true;

  @override
  _VideoControllersState createState() => _VideoControllersState();
}

class _VideoControllersState extends State<VideoControllers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color(0x267e7e7e),
                blurRadius: 250,
                offset: Offset(0, 4),
              ),
            ],
            color: const Color(0xff2a64e3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  widget.isPlaying
                      ? 'assets/icons/pause.svg'
                      : 'assets/icons/play.svg',
                  width: 21,
                  height: 21,
                ),
                onPressed: () {
                  setState(() {
                    widget.isPlaying = !widget.isPlaying;
                    widget.onPlayClick();
                  });
                },
              ),
              const Text(
                "4:43",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: MySize.size12),
              Stack(
                children: [
                  Opacity(
                    opacity: 0.20,
                    child: Container(
                      width: 105,
                      height: 2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 85,
                    height: 2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: MySize.size12),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 0),
          child: Container(
            width: 114,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x267e7e7e),
                  blurRadius: 250,
                  offset: Offset(0, 4),
                ),
              ],
              color: const Color(0xff2a64e3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/text.svg',
                  ),
                ),
                SizedBox(width: MySize.size6),
                const Text(
                  "Текст",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
