import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  String _bodyText = 'Hello world!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('My Home Page'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: Center(
          child: Text(_bodyText),
        ),
        bottomSheet: RaisedButton(
          padding: const EdgeInsets.all(10),
          child: Text('Change Body!'),
          onPressed: _changeBody,
        ));
  }

  void _changeBody(){
    _bodyText = "New text!";
    print(_bodyText);
  }
}
