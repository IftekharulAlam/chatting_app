// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:chatting_app/theme.dart';
import 'package:flutter/material.dart';

import 'screens/welcome/signin_or_signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: SigninorSignUp(),
    );
  }
}
