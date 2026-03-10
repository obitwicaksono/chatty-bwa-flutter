class ChatListGroupModel {
  late String imageUrl;
  late String name;
  late String text;
  late String time;
  late bool unread;

  ChatListGroupModel({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  });

  static List<ChatListGroupModel> getChatListGroup() {
    List<ChatListGroupModel> chatListGroup = [];

    chatListGroup.add(
      ChatListGroupModel(
        imageUrl: 'assets/images/group1.png',
        name: 'Jakarta Fair',
        text: 'Why does everyone ca...',
        time: '11:11',
        unread: false,
      ),
    );

    chatListGroup.add(
      ChatListGroupModel(
        imageUrl: 'assets/images/group3.png',
        name: 'Bentley',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
      ),
    );

    chatListGroup.add(
      ChatListGroupModel(
        imageUrl: 'assets/images/group1.png',
        name: 'John F',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
      ),
    );

    chatListGroup.add(
      ChatListGroupModel(
        imageUrl: 'assets/images/group2.png',
        name: 'Aura',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
      ),
    );
    return chatListGroup;
  }
}
