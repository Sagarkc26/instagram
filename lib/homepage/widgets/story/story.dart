// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram/homepage/widgets/story/storypage.dart';

class StoryList extends StatelessWidget {
  StoryList({Key? key}) : super(key: key);

  List<dynamic> story = [
    {"images": 'images/daddy.jpg', "username": "ManiRam"},
    {"images": 'images/mummy.jpg', "username": "Laxmi"},
    {"images": 'images/sudha.jpg', "username": "Sudha"},
    {"images": 'images/liza.jpg', "username": "Liza"},
    {"images": 'images/suman.jpg', "username": "Suman"},
    {"images": 'images/siddhu.jpg', "username": "Siddhu"},
    {"images": 'images/giri.jpg', "username": "G1R"},
    {"images": 'images/anuj.jpg', "username": "R3X"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(children: [
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/sagar.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const Text(
                    "Add story",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Positioned(
                bottom: 12,
                right: 0,
                child: Container(
                  height: 23,
                  width: 23,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      alignment: Alignment.center,
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              )
            ]),
            const SizedBox(
              width: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                story.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StoryPage(
                            map: story[index],
                          ),
                        ));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF982282),
                                  Color(0xFFEEA863),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                width: 66,
                                height: 66,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${story[index]["images"]}'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text('${story[index]["username"]}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
