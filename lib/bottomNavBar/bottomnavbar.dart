// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:instagram/Reel/reel.dart';
// import 'package:instagram/addphoto/addphoto.dart';
// import 'package:instagram/profile/profile.dart';

// import '../homepage/homepage.dart';
// import '../search/search.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   final List<Widget> _widgetOptions = [
//     const HomePage(),
//     const SearchPage(),
//     const MultipleImageSelector(),
//     const ReelPage(),
//     const ProfilePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.home,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.search,
//             ),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.add_circled,
//             ),
//             label: 'Add Photo',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.videocam_circle,
//             ),
//             label: 'Reel',
//           ),
//           BottomNavigationBarItem(
//             icon: CircleAvatar(
//               radius: 13,
//               backgroundImage: AssetImage("images/skc.jpg"),
//             ),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Reel/reel.dart';
import 'package:instagram/addphoto/addphoto.dart';
import 'package:instagram/homepage/homepage.dart';
import 'package:instagram/profile/profile.dart';
import 'package:instagram/search/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pageViewController = PageController();
  int _activePage = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const SearchPage(),
    // ViewLawyerMembership(),
    const MultipleImageSelector(),
    const ReelPage(),
    const ProfilePage()
  ];

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  static const List<IconData> _activeIcons = [
    CupertinoIcons.home,
    CupertinoIcons.search,
    CupertinoIcons.add_circled,
    CupertinoIcons.videocam_circle,
    Icons.person_3_rounded
  ];
  static const List<IconData> _inactiveIcons = [
    Icons.home_outlined,
    Icons.search,
    Icons.add_box_outlined,
    Icons.video_library_outlined,
    CupertinoIcons.person
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        children: _widgetOptions,
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _activePage,
        onTap: (index) {
          _pageViewController.animateToPage(index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceOut);
        },
        items: List.generate(_activeIcons.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(
              _inactiveIcons[index],
            ),
            activeIcon: Icon(
              _activeIcons[index],
            ),
            label: '', // Remove label
          );
        }),
      ),
    );
  }
}
