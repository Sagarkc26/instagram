import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:instagram/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff982282), Color(0xffEEA863)],
        ),
        childWidget: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/instagram.png"),
                  fit: BoxFit.cover)),
        ),
        defaultNextScreen: const HomePage(),
      ),
      // body: Column(
      //   children: [
      //     Stack(children: [
      //       Container(
      //         height: MediaQuery.of(context).size.height,
      //         width: MediaQuery.of(context).size.width,
      //         decoration: const BoxDecoration(
      //           gradient: LinearGradient(
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //             colors: [
      //               Color(0xFF982282),
      //               Color(0xFFEEA863),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //           bottom: 20,
      //           child: SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.07,
      //             width: MediaQuery.of(context).size.width * 0.75,
      //             child: ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                     shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(23))),
      //                 onPressed: () {
      //                   Navigator.of(context).push(MaterialPageRoute(
      //                       builder: (_) => const HomePage()));
      //                 },
      //                 child: const Text("Start")),
      //           ))
      //     ]),
      //   ],
      // ),
    );
  }
}
