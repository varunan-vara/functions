import 'package:flutter/material.dart';

//future widget used to make dropdowns if necessary

class CustomDropDownButton extends StatefulWidget {
  String title = "";
  var function;
  CustomDropDownButton({Key key, @required String title, function}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState(title, function);
}

class _DropDownButtonState extends State<CustomDropDownButton> {
  String title = "r";
  var function;
  _DropDownButtonState(this.title, this.function);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        color: Color(0xfffafaff),
        child: Text(title, style: TextStyle(fontFamily: "Open Sans", fontSize: 20),),
      ),
      onPressed: function,
    );
  }
}
