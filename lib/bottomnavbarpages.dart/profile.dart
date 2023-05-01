import 'package:flutter/material.dart';

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
                  const Text(
                    "rohan_12",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_box_outlined,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            size: 30,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/sagar.jpg"),
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Text(
                        "51",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Text(
                        "324",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Text(
                        "316",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
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
