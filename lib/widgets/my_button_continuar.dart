import 'package:boxxpress/pages/new_password.dart';
import 'package:boxxpress/pages/res_contra.dart';
import 'package:flutter/material.dart';

class MyButtonContinuar extends StatefulWidget {
  const MyButtonContinuar({super.key});

  @override
  State<MyButtonContinuar> createState() => _MyButtonContinuarState();
}

class _MyButtonContinuarState extends State<MyButtonContinuar> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const PasswordChangedScreen()),
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
            color: Color.fromARGB(255, 214, 212, 203),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MyButtonContinuar2 extends StatefulWidget {
  const MyButtonContinuar2({super.key});

  @override
  State<MyButtonContinuar2> createState() => _MyButtonContinuar2State();
}

class _MyButtonContinuar2State extends State<MyButtonContinuar2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const resContra()),
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
            color: Color.fromARGB(255, 214, 212, 203),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
