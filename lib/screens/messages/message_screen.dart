// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chatting_app/constants.dart';
import 'package:chatting_app/models/Chat.dart';
import 'package:chatting_app/screens/messages/components/body.dart';
import 'package:chatting_app/screens/profile/profile_screen_2.dart';
import 'package:chatting_app/screens/video_call_screen/video_call_screen.dart';
import 'package:chatting_app/screens/voice_call_screen/voice_call_screen.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final Chat chat;
  const MessageScreen({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(context, chat),
      body: Body(
        chat: chat,
      ),
    );
  }

  AppBar builAppBar(BuildContext context, Chat chat) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen2(chat: chat)),
          );
        },
        child: Row(
          children: [
            BackButton(),
            CircleAvatar(
              backgroundImage: AssetImage(chat.image!),
            ),
            SizedBox(
              width: kDefaultPadding * 0.75,
            ),
            Column(
              children: [
                Text(
                  chat.name!,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  chat.time!,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Voice_Call_Screen(chato: chat)),
              );
            },
            icon: Icon(Icons.local_phone)),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Video_Call_Screen(
                    chato: chat,
                  ),
                ),
              );
            },
            icon: Icon(Icons.videocam)),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
