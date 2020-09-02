import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('My Home Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
    );
  }
}
