import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/components/chat_card.dart';
import 'package:telegram_clone_ui/components/my_appbar.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 90),
        child: MyAppbar(),
      ),
      body: SingleChildScrollView(
        child: ChatCard(),
      ),
    );
  }
}
