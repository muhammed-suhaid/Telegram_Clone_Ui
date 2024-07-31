import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/models/chat_model.dart';
import 'package:telegram_clone_ui/services/chat_api.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({super.key});

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  List<User> chat = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 3,
          ),
          height: 65,
          child: Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Text('image'),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Chat Name',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'last message',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.45),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Time',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.45),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> fetchUsers() async {
    final response = await ChatApi.fetchUsers();
    print(response);
  }
}
