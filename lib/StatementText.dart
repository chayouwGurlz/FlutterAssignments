import 'package:flutter/material.dart';

class StatementText extends StatelessWidget{
  final String sText;

  StatementText(this.sText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        sText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}