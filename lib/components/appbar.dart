import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:functions/components/roundedbutton.dart';

class FunctionsAppBar extends StatelessWidget {
  String pageName = "";
  FunctionsAppBar(this.pageName);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xfffafaff),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              //Title Text
              (pageName == "")
                  ? "LetticeFunctions"
                  : "LetticFunctions: " + pageName,
              style: TextStyle(
                fontFamily: "Varela Round",
                fontWeight: FontWeight.w800,
                color: Color(0xff1c1c1c),
                fontSize: 26,
              ),
            ),
            Row(
              children: <Widget>[
                RoundedButton(
                  title: Icon(Icons.home, color: Color(0xff1c1c1c),),
                  function: () {
                    Navigator.pushNamed(context, "/");
                  },
                ),
                RoundedButton(
                  title: Icon(Icons.settings, color: Color(0xff1c1c1c),),
                  function: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
                RoundedButton(
                  title: Text("Github", style: TextStyle(fontFamily: "Open Sans", fontSize: 20)),
                  function: () {js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);}
                ),
              ],
            ),
          ],
        ));
  }
}
