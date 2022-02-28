// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Iftekharul Alam",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
