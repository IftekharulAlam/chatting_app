// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chatting_app/models/Chat.dart';
import 'package:chatting_app/screens/video_call_screen/video_call_screen.dart';
import 'package:chatting_app/screens/voice_call_screen/voice_call_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen2 extends StatelessWidget {
  final Chat chat;
  const ProfileScreen2({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body_profile_2(chat: chat),
    );
  }
}

class Body_profile_2 extends StatelessWidget {
  const Body_profile_2({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

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
            backgroundImage: AssetImage(chat.image!),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            chat.name!,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Voice_Call_Screen(chato: chat)),
                    );
                  },
                  icon: Icon(Icons.call)),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Video_Call_Screen(chato: chat)),
                    );
                  },
                  icon: Icon(Icons.video_call)),
              SizedBox(
                width: 20,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
              SizedBox(
                width: 20,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.block)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          OptionCards(text: "Theme", icon: Icon(Icons.color_lens)),
          SizedBox(
            height: 20,
          ),
          OptionCards(text: "Emoji", icon: Icon(Icons.emoji_emotions)),
          SizedBox(
            height: 20,
          ),
          OptionCards(text: "Location", icon: Icon(Icons.near_me)),
          SizedBox(
            height: 20,
          ),
          OptionCards(text: "Word Effects", icon: Icon(Icons.access_alarm)),
          SizedBox(
            height: 20,
          ),
          OptionCards(text: "Files", icon: Icon(Icons.file_copy)),
        ],
      ),
    );
  }
}

class OptionCards extends StatelessWidget {
  final String text;
  final Icon icon;

  const OptionCards({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
            icon
          ],
        ),
      ),
    );
  }
}
