import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/addphoto/addphoto.dart';
import 'package:instagram/bottomnavbarpages.dart/profile.dart';

import 'bottomnavbarpages.dart/search.dart';
import 'homepage.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                },
                child: const Icon(Icons.home)),
            label: "Home"),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ));
              },
              child: const Icon(Icons.search),
            ),
            label: "About"),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MultipleImageSelector(),
                  ));
                },
                child: const Icon(Icons.add_box_outlined)),
            label: "Product"),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.video_collection_outlined)),
            label: "Contact"),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ));
                },
                child: const CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage("images/skc.jpg"),
                )),
            label: "Settings"),
      ],
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}

Widget imagebox() {
  return Container(
    height: 125,
    width: 80,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: const Color(0xffD9D8D8),
      border: Border.all(width: 1),
    ),
  );
}
