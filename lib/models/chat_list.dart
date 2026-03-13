enum ChatType { friend, group }

class ChatListModel {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;
  final ChatType chatType;
  final String id;

  ChatListModel({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
    required this.chatType,
    required this.id,
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
        chatType: ChatType.friend,
        id: 'chat1',
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/friend2.png',
        name: 'Gabriela',
        text: 'I saw it clearly and mig...',
        time: '2:30',
        unread: false,
        chatType: ChatType.friend,
        id: 'chat2',
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group1.png',
        name: 'Jakarta Fair',
        text: 'Why does everyone ca...',
        time: '11:11',
        unread: false,
        chatType: ChatType.group,
        id: 'group1',
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group3.png',
        name: 'Bentley',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
        chatType: ChatType.group,
        id: 'group2',
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group1.png',
        name: 'John F',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
        chatType: ChatType.group,
        id: 'group3',
      ),
    );

    chatList.add(
      ChatListModel(
        imageUrl: 'assets/images/group2.png',
        name: 'Aura',
        text: 'The car which does not...',
        time: '7:11',
        unread: true,
        chatType: ChatType.group,
        id: 'group4',
      ),
    );
    return chatList;
  }
}
