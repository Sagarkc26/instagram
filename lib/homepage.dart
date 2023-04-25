import 'package:flutter/material.dart';
import 'package:instagram/widget/post.dart';
import 'package:instagram/widget/story.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                                image: NetworkImage(
                                  "https://assets.stickpng.com/images/5a4e432a2da5ad73df7efe7a.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          const Icon(
                            Icons.message,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                  StoryWidget(),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
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
