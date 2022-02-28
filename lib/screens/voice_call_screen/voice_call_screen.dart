// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chatting_app/models/Chat.dart';
import 'package:flutter/material.dart';

class Voice_Call_Screen extends StatelessWidget {
  final Chat chato;
  const Voice_Call_Screen({Key? key, required this.chato}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: myBody(chato: chato),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_call), label: "Add People"),
          BottomNavigationBarItem(icon: Icon(Icons.speaker), label: "Sound"),
          BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack_rounded), label: "Mic"),
          BottomNavigationBarItem(icon: Icon(Icons.call_end), label: "Call End")
        ],
      ),
    );
  }
}

class myBody extends StatelessWidget {
  const myBody({
    Key? key,
    required this.chato,
  }) : super(key: key);

  final Chat chato;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(chato.image!),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            chato.name!,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Calling",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
