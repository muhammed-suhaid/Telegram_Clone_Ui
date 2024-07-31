class User {
  final String name;
  final String image;
  final List<Message> messages;

  User({
    required this.name,
    required this.image,
    required this.messages,
  });

  factory User.fromMap(Map<String, dynamic> user) {
    var messages = messagesList.map((msg) => Message.fromMap(msg)).toList();

    return User(
      name: user['name'],
      image: user['picture']['medium'],
      messages: messages,
    );
  }
}

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

List<Map<String, String>> messagesList = [
  {'lastMsg': 'do Subscribe', 'time': '10:00 AM'},
  {'lastMsg': 'do Like', 'time': '10:05 AM'},
  {'lastMsg': 'do Share', 'time': '10:10 AM'},
  {'lastMsg': 'Good morning', 'time': '10:15 AM'},
  {'lastMsg': 'What\'s up?', 'time': '10:20 AM'},
  {'lastMsg': 'See you later', 'time': '10:25 AM'},
  {'lastMsg': 'Bye', 'time': '10:30 AM'},
  {'lastMsg': 'Good night', 'time': '10:35 AM'},
  {'lastMsg': 'Take care', 'time': '10:40 AM'},
  {'lastMsg': 'Thank you', 'time': 'Fri'},
  {'lastMsg': 'Welcome', 'time': 'Fri'},
  {'lastMsg': 'Sorry', 'time': 'Fri'},
  {'lastMsg': 'No problem', 'time': 'Thu'},
  {'lastMsg': 'Sure', 'time': '11:05 AM'},
  {'lastMsg': 'Absolutely', 'time': 'Thu'},
  {'lastMsg': 'Of course', 'time': 'Thu'},
  {'lastMsg': 'Great', 'time': 'Wed'},
  {'lastMsg': 'Fantastic', 'time': 'Wed'},
  {'lastMsg': 'Awesome', 'time': 'Wed'},
  {'lastMsg': 'Amazing', 'time': 'Wed'},
  {'lastMsg': 'Cool', 'time': 'Tue'},
  {'lastMsg': 'Nice', 'time': 'Tue'},
  {'lastMsg': 'Interesting', 'time': 'Tue'},
  {'lastMsg': 'Okay', 'time': 'Mon'},
  {'lastMsg': 'Alright', 'time': 'Mon'}
];