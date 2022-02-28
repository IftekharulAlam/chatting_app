// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chatting_app/components/primary_button.dart';
import 'package:chatting_app/constants.dart';
import 'package:chatting_app/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninorSignUp extends StatelessWidget {
  const SigninorSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png"
                    : "assets/images/Logo_dark.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                  text: "Sign in",
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()))),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                  text: "Sign Up",
                  color: Theme.of(context).colorScheme.secondary,
                  press: () {}),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
