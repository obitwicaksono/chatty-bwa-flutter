import 'package:flutter/material.dart';
import 'package:chatty_bwa/theme.dart';

class ChatBubbleUser extends StatelessWidget {
  final String userImage;
  final String text;
  final String time;

  const ChatBubbleUser({
    super.key,
    required this.userImage,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(minHeight: 72, maxWidth: 280),
            decoration: BoxDecoration(
              color: whiteGreyColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22.0),
                topRight: Radius.circular(22.0),
                bottomRight: Radius.circular(0.0),
                bottomLeft: Radius.circular(22.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 19,
                vertical: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16,
                      color: blackGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 14,
                      color: blackGrey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 12),
          Image.asset(userImage, height: 40, width: 40),
        ],
      ),
    );
  }
}
