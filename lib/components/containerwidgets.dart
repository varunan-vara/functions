import 'package:flutter/material.dart';

class MainPageContainerWrap extends StatelessWidget {
  const MainPageContainerWrap({Key key, @required String childWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //child: child,
        );
  }
}

class MainListWidget extends StatelessWidget {
  List functionlist = [
    "Normal Distribution"
  ];
  int index;
  MainListWidget({this.index});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xfffafaff),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          functionlist[index],
          style: TextStyle(
            fontFamily: "Open Sans",
            color: Color(0xff1c1c1c),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
