// ignore_for_file: prefer_const_constructors

import 'package:chatting_app/constants.dart';
import 'package:chatting_app/models/Chat.dart';
import 'package:chatting_app/screens/voice_call_screen/voice_call_screen.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;
  final VoidCallback press;
  const ChatCard({Key? key, required this.chat, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Voice_Call_Screen(chato: chat)),
        );
      },
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image!),
                ),
                if (chat.isActive!)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time!),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Voice_Call_Screen(chato: chat)),
                );
              },
              child: Icon(
                Icons.call,
                size: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
