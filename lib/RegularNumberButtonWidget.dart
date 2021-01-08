import 'package:flutter/material.dart';
import 'app_style.dart';

class RegularNumberButton extends StatelessWidget {
  RegularNumberButton({@required this.isFun, @required this.label});
  final Function isFun;
  final String label;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: isFun,
      child: Container(
        child: Text(label, style: buttonLabelStyle),
      ),
    );
  }
}
