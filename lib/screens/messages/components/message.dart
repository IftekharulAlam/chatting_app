// ignore_for_file: prefer_const_constructors

import 'package:chatting_app/constants.dart';
import 'package:chatting_app/models/Chat.dart';
import 'package:chatting_app/models/ChatMessage.dart';
import 'package:chatting_app/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  final Chat chat;
  const Message({Key? key, required this.message, required this.chat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(chat.image!),
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            )
          ],
          TextMessage(
            message: message,
          )
        ],
      ),
    );
  }
}
