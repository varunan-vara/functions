import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  RoundedButton({
    Key key,
    @required this.function,
    @required this.title,
  }) : super(key: key);

  var function;
  var title;

  @override
  _RoundedButtonState createState() => _RoundedButtonState(function, title);
}

class _RoundedButtonState extends State<RoundedButton> {
  _RoundedButtonState(this.function, this.titleicon);
  var function;
  var titleicon;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: function,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(vertical:10, horizontal: 30),
        decoration: BoxDecoration(
          color: Color(0xffeef0f2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: titleicon
      ),
    );
  }
}
