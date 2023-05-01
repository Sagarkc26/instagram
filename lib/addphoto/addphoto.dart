import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultipleImageSelector extends StatefulWidget {
  const MultipleImageSelector({Key? key}) : super(key: key);

  @override
  State<MultipleImageSelector> createState() => _MultipleImageSelectorState();
}

class _MultipleImageSelectorState extends State<MultipleImageSelector> {
  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Add Photos",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: 300.0,
                child: selectedImages.isEmpty
                    ? GestureDetector(
                        onTap: () {
                          getImages();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            imagebox(),
                            const SizedBox(
                              width: 10,
                            ),
                            imagebox(),
                            const SizedBox(
                              width: 10,
                            ),
                            imagebox(),
                          ],
                        ),
                      )
                    : GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: selectedImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 20, crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: kIsWeb
                                ? Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.13,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1)),
                                    child: Image.network(
                                      selectedImages[index].path,
                                      fit: BoxFit.cover,
                                    ))
                                : Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.13,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1)),
                                    child: Image.file(
                                      selectedImages[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          );
                        },
                      ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: SizedBox(
                  height: 45,
                  width: 280,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2B2C43),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),
                      onPressed: () {
                        // selectedImages != List.empty()
                        //     ? Navigator.of(context).push(MaterialPageRoute(
                        //         builder: (_) => const ShowingPage(),
                        //       ))
                        //     : null;
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}

Widget imagebox() {
  return Container(
    height: 125,
    width: 80,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: const Color(0xffD9D8D8),
      border: Border.all(width: 1),
    ),
  );
}
