import 'package:flutter/material.dart';
import './Statement.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _statementIndex = 0;

  var _statements =
    [
      'Welcome',
      'Good Morning',
      'Don\'t worry, be happy',
    ];

  void _writeStatements() {
    setState(() {
      _statementIndex += 1;
    });
    print (_statementIndex);
    if (_statementIndex > _statements.length){
      print('The statement has been overloaded!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Assignment App'),
          ),
          body: _statementIndex < _statements.length
              ?
          Statement(
            writeStatements: _writeStatements,
            statementIndex: _statementIndex,
            statements: _statements,
          ): Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              'The Time is Over!',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
      ),
    );
  }
}
