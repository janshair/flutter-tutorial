import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _bodyText = 'Hello world!';
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               TextFormField(
                 validator: (value) {
                   if(!value.contains('@') && !value.contains('.')){
                     return 'Email address is not valid';
                   }
                   return null;
                 },
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                ),
              ),
              TextFormField(
                validator: (value) {
                  if(value.length < 4 ){
                    return 'Password too short';
                  }
                  return null;
                },
                controller: _passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              TextFormField(
                controller: _confirmPasswordController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if(value.length < 4 ){
                    return 'Password too short';
                  } else if(_passwordController.text.toString() != _confirmPasswordController.text.toString() ){
                    return 'Passwords do not match';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                ),

              ),
              SizedBox(height: 10,),
              Row(
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
            ],
          ),
        ),
      ),
    );
  }

  void _changeBody() {
    _formKey.currentState.validate();
  }
}
