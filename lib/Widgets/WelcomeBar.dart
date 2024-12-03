import 'package:flutter/material.dart';

class WelcomeBar extends StatelessWidget {
  const WelcomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "Welcome to Laza.",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
