import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/datas/message_data.dart';
import 'package:telegram_clone_ui/models/chat_model.dart';
import 'package:telegram_clone_ui/models/message_model.dart';
import 'package:telegram_clone_ui/services/chat_api.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({super.key});

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  List<User> users = [];

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
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        List<Message> data =
            messagesList.map((msg) => Message.fromMap(msg)).toList();

        final String lastMsg = data[index].lastMsg;
        final String time = data[index].time;

        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 3,
          ),
          height: 65,
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(user.image),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    lastMsg,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.45),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                time,
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
    setState(() {
      users = response;
    });
  }
}
