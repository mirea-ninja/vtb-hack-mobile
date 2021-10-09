import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bottom_modals/game_finished_modal.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';

class GameSlider extends StatefulWidget {
  Widget body;
  void onToggle;

  GameSlider({Key? key,
    required this.body,
  }) : super(key: key);

  @override
  _GameSliderState createState() => _GameSliderState();
}

class _GameSliderState extends State<GameSlider> {
  final double _initFabHeight = 120.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  double _panelHeightClosed = 95.0;
  bool _play = false;
  final PanelController _panelcontroller = PanelController() ;


  @override
  void initState() {
    super.initState();

    _fabHeight = _initFabHeight;
  }

  Random random = Random();

  void _togglePlay() {
    setState(() {
      _play = !_play;
    });
    var investProvider =  Provider.of<InvestBalance>(context, listen: false);

    if (_play) {
      //_panelcontroller.open();
      Timer.periodic(Duration(milliseconds: 10), (Timer timer) {
        investProvider.changePortfolioValue(random.nextInt(100).toDouble());
        investProvider.incDay();
        if (_play == false) {
          timer.cancel();
        }
        if (investProvider.dayCounter >= 365) {
          timer.cancel();
                  showModalBottomSheet<void>(
                    context: context,
                    isDismissible: false,
                    enableDrag: false,
                    builder: (BuildContext context) {
                      return GameFinishedModal();
                    },
                  );
          }
      });
    }
  }


@override
Widget build(BuildContext context) {
  _panelHeightOpen = MediaQuery
      .of(context)
      .size
      .height * .40;

  return Container(
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        SlidingUpPanel(
          onPanelOpened: _togglePlay,
          onPanelClosed: _togglePlay,
          controller: _panelcontroller,
          maxHeight: _panelHeightOpen,
          minHeight: _panelHeightClosed,
          parallaxEnabled: true,
          parallaxOffset: 0,
          body: widget.body,
          panelBuilder: (sc) => _panel(sc),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: Radius.circular(18.0)),
          onPanelSlide: (double pos) =>
              setState(() {
                _fabHeight = pos * (_panelHeightOpen - _panelHeightClosed) +
                    _initFabHeight;
              }),
        ),

        // the fab
        Positioned.fill(
          bottom: _fabHeight - 55,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              elevation: 0,
              child: GestureDetector(
                // onTap: _panelcontroller.open(),
                child: Consumer<InvestBalance>(
                  builder: (context, value, child) {
                    return Transform.rotate(
                      angle: value.dayCounter * 10, //set the angel
                      child: Icon(Icons.access_time,size: 40,
                        color: Theme
                            .of(context)
                            .primaryColor,
                      ),
                    );
                  }
                ),
              ),
              onPressed: () {},
              backgroundColor: Colors.white,
            ),
          ),
        ),

        Positioned(
            top: 0,
            child: ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .padding
                          .top,
                      color: Colors.transparent,
                    )))),

        //the SlidingUpPanel Title
      ],
    ),
  );
}

Widget _panel(ScrollController sc) {
  return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: sc,
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
            ],
          ),
          SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Машина времени",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 36.0,
          ),
          Center(
            child: Text(
                "Здесь классный анимированный график"),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Consumer<InvestBalance>(
              builder: (context, value, child) {
                return Text(
                    "День ${value.dayCounter}", style: TextStyle(fontSize: 30),);
              }
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ));
}

Widget _button(String label, IconData icon, Color color) {
  return Column(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
        decoration:
        BoxDecoration(color: color, shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 8.0,
          )
        ]),
      ),
      SizedBox(
        height: 12.0,
      ),
      Text(label),
    ],
  );
}}
