import 'package:flutter/material.dart';
import '../func dart/NormalDistribution.dart';
import '../func dart/randomnumbergenerator.dart';
import 'dart:core';
import 'dart:io' as io;
import 'package:path_provider/path_provider.dart';

List<Widget> FuncWidgets = [];

class Launcher extends StatefulWidget {
  Launcher({Key key}) : super(key: key);

  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          
        ],
      ),
    );
  }
}

class LauncherButton extends StatefulWidget {
  LauncherButton({Key key, @required this.function, @required this.text})
      : super(key: key);
  var function;
  String text;

  @override
  _LauncherButtonState createState() => _LauncherButtonState(
        function: function,
        mainText: text,
      );
}

class _LauncherButtonState extends State<LauncherButton> {
  _LauncherButtonState({@required this.function, @required this.mainText});
  var function;
  String mainText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          // ignore: unnecessary_statements
          function;
        },
        child: Text(mainText),
      ),
    );
  }
}
