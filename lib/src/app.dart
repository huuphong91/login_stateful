
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginstateful/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
