import 'package:flutter/material.dart';
import 'package:instagram/homepage/widgets/message.dart';
import 'package:instagram/homepage/widgets/notification.dart';
import 'package:instagram/homepage/widgets/post.dart';
import 'package:instagram/homepage/widgets/story/story.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("homepage");
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/instagram.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationPage(),
                                  ));
                                },
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 33,
                                )),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MessagePage(),
                                ));
                              },
                              child: const SizedBox(
                                height: 30,
                                width: 30,
                                child: Image(
                                    image: AssetImage("images/message.png")),
                              ),
                            )
                            // const Icon(
                            //   Icons.message,
                            //   size: 30,
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                  StoryList(),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.grey.withOpacity(0.4),
            ),
            Expanded(
              child: PostWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
