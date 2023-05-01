import 'package:flutter/material.dart';
import 'package:instagram/shared/device_size.dart';

class Create extends StatelessWidget {
  const Create({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 460,
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.012,
                    ),
                    Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      height: getDeviceHeight(context) * 0.02,
                    ),
                    const Text(
                      "Create",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Divider(
                      color: Colors.black54.withOpacity(0.2),
                    ),
                    listofCreate(
                        Icons.video_collection_outlined, "Reel", context),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 62, right: 12, top: 7),
                      child: Divider(
                        color: Colors.black54.withOpacity(0.2),
                      ),
                    ),
                    listofCreate(Icons.grid_on, "Post", context),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 62, right: 12, top: 7),
                      child: Divider(
                        color: Colors.black54.withOpacity(0.2),
                      ),
                    ),
                    listofCreate(Icons.addchart_rounded, "Story", context),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 62, right: 12, top: 7),
                      child: Divider(
                        color: Colors.black54.withOpacity(0.2),
                      ),
                    ),
                    listofCreate(Icons.sports_volleyball_sharp,
                        "Story Highlight", context),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 62, right: 12, top: 7),
                      child: Divider(
                        color: Colors.black54.withOpacity(0.2),
                      ),
                    ),
                    listofCreate(Icons.live_tv_outlined, "Live", context),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 62, right: 12, top: 7),
                      child: Divider(
                        color: Colors.black54.withOpacity(0.2),
                      ),
                    ),
                    listofCreate(Icons.menu_book_sharp, "Guide", context)
                  ]),
                );
              });
        },
        icon: const Icon(
          Icons.add_box_outlined,
          size: 30,
        ));
  }

  Widget listofCreate(IconData icon, String text, BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            SizedBox(
              width: getDeviceWidth(context) * 0.05,
            ),
            Icon(
              icon,
              color: Colors.black54,
            ),
            SizedBox(
              width: getDeviceWidth(context) * 0.05,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
