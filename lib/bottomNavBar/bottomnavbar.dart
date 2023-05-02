import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Reel/reel.dart';
import 'package:instagram/addphoto/addphoto.dart';
import 'package:instagram/profile/profile.dart';

import '../homepage/homepage.dart';
import '../search/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomePage(),
    const SearchPage(),
    const MultipleImageSelector(),
    const ReelPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add_circled,
            ),
            label: 'Add Photo',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.videocam_circle,
            ),
            label: 'Reel',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage("images/skc.jpg"),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
