import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';
// import 'package:chatty_bwa/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/group1.png',
                    width: 55,
                    height: 55,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jakarta Fair',
                        style: titleTextStyle,
                      ),
                      Text(
                        '14,209 members',
                        style: subtitleTextStyle,
                      ),
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
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
