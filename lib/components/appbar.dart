import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:functions/components/roundedbutton.dart';

class FunctionsAppBar extends StatefulWidget {
  String pageName;
  double width;
  FunctionsAppBar(this.pageName, this.width);

  _FunctionsAppBarState createState() => _FunctionsAppBarState(pageName, width);
}

class _FunctionsAppBarState extends State<FunctionsAppBar> {
  String pageName;
  double bruh;
  bool displayDropdown = false;
  _FunctionsAppBarState(this.pageName, this.bruh);

  Widget AppBarButtonWidget(context, width) {
    return Container(
      key: UniqueKey(),
      child: (width >= 1000)
          ? Row(
              key: UniqueKey(),
              children: <Widget>[
                RoundedButton(
                  title: Icon(
                    Icons.home,
                    color: Color(0xff1c1c1c),
                  ),
                  function: () {
                    Navigator.pushNamed(context, "/");
                  },
                ),
                RoundedButton(
                  title: Icon(
                    Icons.settings,
                    color: Color(0xff1c1c1c),
                  ),
                  function: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
                RoundedButton(
                    title: Text("Github",
                        style:
                            TextStyle(fontFamily: "Open Sans", fontSize: 20)),
                    function: () {
                      js.context.callMethod(
                          'open', ['https://github.com/varunan-vara/functions']);
                    }),
              ],
            )
          : Column(key: UniqueKey(), children: <Widget>[
              RoundedButton(
                title: Icon(
                  Icons.more_vert,
                  color: Color(0xff1c1c1c),
                ),
                function: () {
                  setState(() {
                    Navigator.pushNamed(context, "/");
                  });
                },
              ),
            ]),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xfffafaff),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              //Title Text
              (pageName == "")
                  ? "Basic.Functions".toUpperCase()
                  : "Basic.Functions: " + pageName.toUpperCase(),
              style: TextStyle(
                fontFamily: "Open Sans",
                color: Color(0xff1c1c1c),
                fontSize: 40,
              ),
            ),
            AppBarButtonWidget(context, size.width)
          ],
        ));
  }
}
