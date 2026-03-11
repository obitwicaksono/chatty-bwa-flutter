import 'package:chatty_bwa/models/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:chatty_bwa/theme.dart';

class ChatTile extends StatelessWidget {
  final ChatListModel chat;
  final VoidCallback? onTap;

  const ChatTile({super.key, required this.chat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Row(
            children: [
              Image.asset(chat.imageUrl, width: 55, height: 55),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(chat.name, style: titleTextStyle),
                  Text(
                    chat.text,
                    style: chat.unread
                        ? subtitleTextStyle.copyWith(color: blackColor)
                        : subtitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Text(chat.time, style: subtitleTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
