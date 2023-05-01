import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            builder: (BuildContext context) {
              return Container(
                  height: 180,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        height: 7,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("images/suman.jpg"),
                        ),
                        title: Text("suman_34"),
                        trailing: CircleAvatar(
                          radius: 10,
                          backgroundColor: Color.fromARGB(255, 15, 244, 23),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        title: Text("Add account"),
                      ),
                    ],
                  ));
            });
      },
      child: Row(
        children: const [
          Text(
            "suman_34",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.keyboard_arrow_down_outlined)
        ],
      ),
    );
  }
}
