import 'package:flutter/material.dart';
import 'screens/launcher.dart';

List<Widget> widgetlist = [
  Launcher(),
];

int indexnumber = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        body: widgetlist[indexnumber],
      ),
    );
  }
}
