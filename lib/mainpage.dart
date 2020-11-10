import 'package:flutter/material.dart';
import 'package:functions/components/appbar.dart';

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
            FunctionsAppBar((widgetTitle[indexnumber] == "Home") ? "" : widgetTitle[indexnumber])
            ],
        ),
      ),
    );
  }
}
