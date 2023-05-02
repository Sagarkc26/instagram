import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                prefixIcon: const Icon(Icons.search),
                label: const Text("Search"),
                contentPadding: const EdgeInsets.all(0),
                border: InputBorder.none,
              ),
            )
          ],
        ),
      )),
    );
  }
}
