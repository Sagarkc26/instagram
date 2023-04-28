import 'package:flutter/material.dart';
import 'package:instagram/data.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: const Text(
          "rohan_12",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: const Icon(Icons.search),
                  label: const Text("Search"),
                  border: InputBorder.none),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Messages",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Requests",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 65,
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${data[index]['images']}"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.045,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${data[index]['username']}",
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                    const Text(
                                      "Sent 22 hours ago",
                                      style: TextStyle(color: Colors.black45),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt_outlined))
                          ]),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
