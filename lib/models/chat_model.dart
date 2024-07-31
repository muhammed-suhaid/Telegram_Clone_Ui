class User {
  final String name;
  final String image;

  User({
    required this.name,
    required this.image,
  });

  factory User.fromMap(Map<String, dynamic> user) {
    return User(
      name: "${user['name']['first']} ${user['name']['last']}",
      image: user['picture']['medium'],
    );
  }
}
