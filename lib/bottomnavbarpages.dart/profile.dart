import 'package:flutter/material.dart';
import 'package:instagram/bottomnavbarpages.dart/profilepart/create.dart';
import 'package:instagram/bottomnavbarpages.dart/profilepart/menu.dart';
import 'package:instagram/bottomnavbarpages.dart/profilepart/profilename.dart';
import 'package:instagram/bottomnavbarpages.dart/profilepart/profilepicrow.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfileName(),
                  Row(
                    children: const [
                      Create(),
                      Menu(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Profilepic(),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        "Edit Profile",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        "Share profile",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.grid_on_sharp,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              // const TabBarView(
              //   children: <Widget>[
              //     Center(
              //       child: Text("It's cloudy here"),
              //     ),
              //     Center(
              //       child: Text("It's rainy here"),
              //     ),
              //     Center(
              //       child: Text("It's sunny here"),
              //     ),
              //   ],
              // ),
            ],
          ),
        )),
      ),
    );
  }
}
