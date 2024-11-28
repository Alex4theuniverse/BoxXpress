import 'package:flutter/material.dart';

class BackgraundBox extends StatelessWidget {
  const BackgraundBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 69, 119, 168),
        Color.fromARGB(255, 89, 87, 87)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}
