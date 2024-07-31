class Message {
  final String lastMsg;
  final String time;

  Message({
    required this.lastMsg,
    required this.time,
  });

  factory Message.fromMap(Map<String, dynamic> msg) {
    return Message(
      lastMsg: msg['lastMsg'],
      time: msg['time'],
    );
  }
}
