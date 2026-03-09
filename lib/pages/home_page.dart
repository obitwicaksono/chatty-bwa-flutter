import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';
// import 'package:chatty_bwa/widgets/chat_tile.dart';
import 'package:chatty_bwa/models/chat_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ChatListModel> chatList =
      ChatListModel.getChatList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28, color: whiteColor),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),

                      ListView.builder(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(),
                        itemCount: chatList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    chatList[index]
                                        .imageUrl,
                                    width: 55,
                                    height: 55,
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      Text(
                                        chatList[index]
                                            .name,
                                        style:
                                            titleTextStyle,
                                      ),
                                      Text(
                                        chatList[index]
                                            .text,
                                        style:
                                            chatList[index]
                                                .unread
                                            ? subtitleTextStyle
                                                  .copyWith(
                                                    color:
                                                        blackColor,
                                                  )
                                            : subtitleTextStyle,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    chatList[index].time,
                                    style:
                                        subtitleTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                      SizedBox(height: 30),
                      Text('Groups', style: titleTextStyle),
                      // ChatTile(
                      //   imageUrl:
                      //       'assets/images/group1.png',
                      //   name: 'Jakarta Fair',
                      //   text: 'Why does everyone ca...',
                      //   time: '11:11',
                      //   unread: false,
                      // ),
                      // ChatTile(
                      //   imageUrl:
                      //       'assets/images/group2.png',
                      //   name: 'Angga',
                      //   text: 'Here here we can go...',
                      //   time: '7:11',
                      //   unread: true,
                      // ),
                      // ChatTile(
                      //   imageUrl:
                      //       'assets/images/group3.png',
                      //   name: 'Bentley',
                      //   text: 'The car which does not...',
                      //   time: '7:11',
                      //   unread: true,
                      // ),
                      // ChatTile(
                      //   imageUrl:
                      //       'assets/images/group1.png',
                      //   name: 'John F',
                      //   text: 'The car which does not...',
                      //   time: '7:11',
                      //   unread: true,
                      // ),
                      // ChatTile(
                      //   imageUrl:
                      //       'assets/images/group2.png',
                      //   name: 'Aura',
                      //   text: 'The car which does not...',
                      //   time: '7:11',
                      //   unread: true,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
