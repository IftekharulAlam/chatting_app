// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chatting_app/constants.dart';
import 'package:chatting_app/models/Chat.dart';
import 'package:chatting_app/models/ChatMessage.dart';
import 'package:chatting_app/screens/messages/components/char_input_field.dart';
import 'package:chatting_app/screens/messages/components/message.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Chat chat;
  const Body({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                chat: chat,
                message: demeChatMessages[index],
              ),
            ),
          ),
        ),
        CharInputField()
      ],
    );
  }
}
