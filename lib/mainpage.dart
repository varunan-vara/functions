import 'package:flutter/material.dart';
import 'package:functions/components/appbar.dart';
import 'package:functions/components/fadein.dart';
import 'components/containerwidgets.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/animation.dart';

//Various Webpages
import 'screens/launcher.dart';

List<Widget> widgetlist = [
  Launcher(),
];

List<String> widgetTitle = [
  "Home",
];

int indexnumber = 0;

Widget mainWidget() {
  return widgetlist[indexnumber];
}



class LaunchPage extends StatefulWidget {
  LaunchPage({Key key}) : super(key: key);

  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {

  ScrollController _controller;
  double _offset = 0;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      body: Stack(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              controller: _controller,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(color: Color(0xff1c1c1c)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FadeIn(1.0, FunctionsAppBar((widgetTitle[indexnumber] == "Home") ? "" : widgetTitle[indexnumber], size.width)),
                    FadeIn(1.0, Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          MainListWidget(index: 0)
                        ],),
                        Column(children: [
                          MainListWidget(index: 0)
                        ],),
                        Column(children: [
                          MainListWidget(index: 0)
                        ],),
                        Column(children: [
                        MainListWidget(index: 0)
                        ],),
                        Column(children: [
                        MainListWidget(index: 0)
                        ],),
                    ],),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
