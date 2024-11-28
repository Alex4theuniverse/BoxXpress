import 'package:flutter/material.dart';

class ButtonEmviar extends StatefulWidget {
  const ButtonEmviar({super.key});

  @override
  State<ButtonEmviar> createState() => _ButtonEmviarState();
}

class _ButtonEmviarState extends State<ButtonEmviar> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.save, color: Colors.white),
      label: const Text("Gardar"),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 234, 230, 229),
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        shadowColor: Colors.black,
        elevation: 10,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onLongPress: () {},
      onPressed: () {},
    );
  }
}
