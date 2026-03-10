import 'package:chatty_bwa/theme.dart';
import 'package:chatty_bwa/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:chatty_bwa/models/chat_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ChatListModel> chatList = ChatListModel.getChatList();
  List<ChatListModel> get friends =>
      chatList.where((chat) => chat.chatType == ChatType.friend).toList();
  List<ChatListModel> get groups =>
      chatList.where((chat) => chat.chatType == ChatType.group).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28, color: whiteColor),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends', style: titleTextStyle),

                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: friends.length,
                        itemBuilder: (context, index) {
                          return ChatTile(
                            imageUrl: friends[index].imageUrl,
                            name: friends[index].name,
                            text: friends[index].text,
                            time: friends[index].time,
                            unread: friends[index].unread,
                            chatType: friends[index].chatType,
                          );
                        },
                      ),
                      SizedBox(height: 30),
                      Text('Groups', style: titleTextStyle),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: groups.length,
                        itemBuilder: (context, index) {
                          return ChatTile(
                            imageUrl: groups[index].imageUrl,
                            name: groups[index].name,
                            text: groups[index].text,
                            time: groups[index].time,
                            unread: groups[index].unread,
                            chatType: groups[index].chatType,
                          );
                        },
                      ),
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
