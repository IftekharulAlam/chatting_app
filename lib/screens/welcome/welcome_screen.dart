// ignore_for_file: prefer_const_constructors

import 'package:chatting_app/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              child: Text("Sign up")),
          TextButton(onPressed: () {}, child: Text("Sign in"))
        ],
      ),
    );
  }
}
