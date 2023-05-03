import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({
    super.key,
    required TextEditingController userController,
  }) : _userController = userController;

  final TextEditingController _userController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black38, blurRadius: 11, offset: Offset(0, 7))
            ]),
        child: TextFormField(
          controller: _userController,
          decoration: InputDecoration(
              fillColor: Colors.grey[50],
              filled: true,
              prefixIcon: const Icon(Icons.email),
              label: const Text("Email/Phone"),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(28))),
        ),
      ),
    );
  }
}
