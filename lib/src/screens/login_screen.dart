import 'package:flutter/material.dart';
import 'package:loginstateful/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            submitButton()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true, // hide password
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password',
      ),
      validator: validatePassword,
      onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Hello'),
      onPressed: () {
        if(formKey.currentState.validate()){
          formKey.currentState.save();

          //take both email and password
          // and post them to some api
          print('Time to post $email and $password to API');

        }
      },
      color: Colors.blue,
    );
  }
}
