import 'package:flutter/material.dart';

class ChatListModel {
  late String imageUrl;
  late String name;
  late String text;
  late String time;
  late bool unread;

  ChatListModel({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  });

  static List<ChatListModel> getChatList() {
    List<ChatListModel> chatList = [];

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/friend1.png',
        name: 'Joshuer',
        text: 'Sorry, you’re not my ty...',
        time: 'Now',
        unread: true,
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/friend2.png',
        name: 'Gabriela',
        text: 'I saw it clearly and mig...',
        time: '2:30',
        unread: false,
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group1.png',
        name: 'Jakarta Fair',
        text: 'Why does everyone ca...',
        time: '11:11',
        unread: false,
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group3.png',
        name: 'Bentley',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group1.png',
        name: 'John F',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group2.png',
        name: 'Aura',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
      ),
    );
    return chatList;
  }
}
