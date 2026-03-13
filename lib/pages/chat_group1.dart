import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty_bwa/widgets/chat_bubble.dart';
import 'package:chatty_bwa/widgets/chat_bubble_for_user.dart';
import 'package:go_router/go_router.dart';

class Group1 extends StatelessWidget {
  const Group1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 5, right: 25),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink(
                    width: 35,
                    height: 35,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      iconSize: 18,
                      color: greyColor,
                      onPressed: () {
                        context.go('/');
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    'assets/images/group1.png',
                    width: 55,
                    height: 55,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jakarta Fair', style: titleTextStyle),
                      Text('14,209 members', style: subtitleTextStyle),
                    ],
                  ),
                  Spacer(),
                  Ink(
                    width: 35,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: greenColor,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.call),
                      iconSize: 18,
                      color: whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  children: [
                    ChatBubble(
                      userImage: 'assets/images/friend1.png',
                      text: 'How are ya guys?',
                      time: '2:30',
                    ),
                    ChatBubble(
                      userImage: 'assets/images/friend3.png',
                      text: 'Find here :P',
                      time: '3:11',
                    ),
                    ChatBubbleUser(
                      userImage: 'assets/images/friend0.png',
                      text:
                          'Thinking about how to deal with this client from hell...',
                      time: '22:08',
                    ),
                    ChatBubble(
                      userImage: 'assets/images/friend2.png',
                      text: 'Love them',
                      time: '23:11',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
