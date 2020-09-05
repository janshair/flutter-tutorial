import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _bodyText = 'Hello world!';

  @override
  Widget build(BuildContext context) {
    print('Called build method with $_bodyText');
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
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              padding: const EdgeInsets.all(10),
              child: Text('Sign up'),
              onPressed: _changeBody,
            ),
            FlatButton(
              color: Colors.green,
              padding: const EdgeInsets.all(10),
              child: Text('Login'),
              onPressed: _changeBody,
            )
          ],
        )
    );
  }

  void _changeBody(){
    setState(() {
      _bodyText = "New text!";
      print(_bodyText);
    });

  }
}
