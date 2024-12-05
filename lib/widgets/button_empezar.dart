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
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color.fromARGB(255, 68, 150, 191), // Color del botón
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: const Text(
        'Continuar',
        style: TextStyle(
            color: Color.fromARGB(255, 242, 240, 233),
            fontFamily: "Parkinsans",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
