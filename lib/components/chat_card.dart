import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

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
}
