import 'package:flutter/material.dart';

//Component Import
import 'mainpage.dart';
import 'package:functions/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LaunchPage(),
        "/settings": (context) => Settings()
      },
      initialRoute: "/",
      theme: ThemeData(
        backgroundColor: Color(0xff1c1c1c),
        textSelectionColor: Color(0xffeef0f2),
        dividerColor: Color(0xfffafafa),
        accentColor: Color(0xffa1cda8),
        cardColor: Color(0xff1c1c1c),
      ),
      debugShowCheckedModeBanner: false,
      title: "Lettice Math Functions"
    );
  }
}
