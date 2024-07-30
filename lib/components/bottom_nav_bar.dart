import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});
  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int currentIndex = 0;
  List<Widget> body = [
    const Center(
      child: Text(
        'Contacts',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'Calls',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'Chats',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: body[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          iconSize: 30,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.grey),
          selectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
