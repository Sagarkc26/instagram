import 'package:flutter/material.dart';

import '../../shared/device_size.dart';

class Menu extends StatelessWidget {
  const Menu({
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
                  child: Column(
                    children: [
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
                      listofMenu(Icons.settings, "Settings", context),
                      listofMenu(Icons.bookmark_border, "Saved", context),
                      listofMenu(Icons.star_border, "Favourites", context),
                      listofMenu(Icons.local_activity_outlined, "Your Activity",
                          context),
                      listofMenu(Icons.menu, "Close friends", context),
                      listofMenu(
                          Icons.credit_card, "Orders and payments", context),
                      listofMenu(Icons.qr_code_2, "QR code", context),
                      listofMenu(Icons.person_add, "Discover people", context),
                    ],
                  ),
                );
              });
        },
        icon: const Icon(
          Icons.menu,
          size: 30,
        ));
  }

  Widget listofMenu(IconData icon, String text, BuildContext context) {
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
              size: 27,
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
