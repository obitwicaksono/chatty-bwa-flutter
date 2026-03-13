import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Chat extends StatelessWidget {
  final String chatId;

  const Chat({super.key, required this.chatId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TAMPILKAN ID DI APPBAR UNTUK MEMASTIKAN BERHASIL
        title: Text('Chat Group: $chatId'),
        backgroundColor: blueColor,
      ),
      body: ElevatedButton(
        child: Text('home'),
        onPressed: () {
          context.go('/');
        },
      ),
    );
  }
}
