// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);

  List<Map<String, String>> post = [
    {
      "name": "Sagarkc_26",
      "address": "Lamahi,Dang",
      "image": "images/sagar.jpg",
    },
    {
      "name": "ManiRam k.c.",
      "address": "Lamahi,Dang",
      "image": "images/daddy.jpg",
    },
    {
      "name": "Laxmi k.c.",
      "address": "Lamahi,Dang",
      "image": "images/mummy.jpg",
    },
    {
      "name": "kc_sudha23",
      "address": "Lamahi,Dang",
      "image": "images/sudha.jpg",
    },
    {
      "name": "Liza_Dangi",
      "address": "Lamahi,Dang",
      "image": "images/liza.jpg",
    },
    {
      "name": "neupane_suman",
      "address": "Butwal,Rupandehi",
      "image": "images/suman.jpg",
    },
    {
      "name": "siddhu",
      "address": "kalanki,KTM",
      "image": "images/siddhu.jpg",
    },
    {
      "name": "G1R",
      "address": "Greenland,KTM",
      "image": "images/giri.jpg",
    },
    {
      "name": "Anuj",
      "address": "Gaughaha,Jhapa",
      "image": "images/anuj.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: post.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 58,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("${post[index]["image"]}"),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${post[index]['name']}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "${post[index]['address']}",
                              style: const TextStyle(fontSize: 13.5),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
            Container(
              height: 390,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('${post[index]["image"]}'),
                ),
              ),
            ),
            ListTile(
              leading: Wrap(
                spacing: 10,
                children: const [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 35,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.message_outlined,
                    size: 35,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.share_outlined,
                    size: 35,
                    color: Colors.black54,
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(right: 12, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Liked by ",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "${post[index]['name']}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          " ${post[index]['name']}",
                          style: const TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        const Text(
                          "Hello",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "View all 13 comments",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            // const Divider(
            //   color: Colors.black,
            // ),
          ],
        );
      },
    );
  }
}
