import 'package:flutter/material.dart';
import 'package:functions/components/appbar.dart';
import 'package:functions/components/fadein.dart';
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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: Color(0xff1c1c1c)),
        child: Column(
          
          children: <Widget>[
            FadeIn(1.0, FunctionsAppBar((widgetTitle[indexnumber] == "Home") ? "" : widgetTitle[indexnumber], size.width)),
            FadeIn(1.3, widgetlist[indexnumber]),
            ],
        ),
      ),
    );
  }
}
