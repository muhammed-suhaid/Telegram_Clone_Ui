import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_clone_ui/screens/chats_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});
  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int currentIndex = 2;
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
    const ChatsScreen(),
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
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.grey),
          selectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF1C1C1D),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/contacts.svg'),
              activeIcon:
                  SvgPicture.asset('assets/icons/contacts_selected.svg'),
              label: 'Contacts',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/chats.svg'),
              activeIcon: SvgPicture.asset('assets/icons/chats_selected.svg'),
              label: 'Chats',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
