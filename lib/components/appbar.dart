import 'package:flutter/material.dart';

class FunctionsAppBar extends StatelessWidget {

  String pageName;
  FunctionsAppBar(this.pageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff1c1c1c),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-3),
            blurRadius: 50,
            color: Color(0x331c1c1c),
          )
        ]
      ),
      child: Row(children: <Widget>[
        
      ],)
    );
  }
}
