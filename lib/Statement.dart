import 'package:flutter/material.dart';
import './StatementText.dart';

class Statement extends StatelessWidget{
  final List<String> statements;
  final int statementIndex;
  final Function writeStatements;

  Statement({
    @required this.statements,
    @required this.writeStatements,
    @required this.statementIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatementText(
          statements[statementIndex],
        ),
        RaisedButton(
          child: Text('Click to Answer!'),
          onPressed: writeStatements,
        ),
      ],
    );
  }
}