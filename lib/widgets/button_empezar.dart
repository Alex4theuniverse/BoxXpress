import 'package:boxxpress/pages/login.dart';
import 'package:flutter/material.dart';

class ButtonEmpezar extends StatefulWidget {
  const ButtonEmpezar({super.key});

  @override
  State<ButtonEmpezar> createState() => _ButtonEmpezarState();
}

class _ButtonEmpezarState extends State<ButtonEmpezar> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: const Text("Empezar"),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 231, 236, 239),
        backgroundColor: const Color.fromARGB(255, 35, 117, 135),
        shadowColor: const Color.fromARGB(255, 203, 148, 29),
        elevation: 20,
        textStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      onLongPress: () {},
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
      // child: const Text("Guardar")  "Ya no va cuando esta el (button.icon)"
    );
  }
}
