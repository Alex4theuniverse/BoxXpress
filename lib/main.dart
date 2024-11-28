import 'package:boxxpress/widgets/button_empezar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/images/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              '   Box \n Xpress',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Parkinsans",
              ),
            ),
            SizedBox(height: 30),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('../assets/images/carrito.png'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 30),
            Text(
              '¡Bienvenido a BoxXpress! Optimiza tus entregas con rastreo en tiempo real y soporte dedicado.\n¡Comencemos!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 242, 237, 237),
              ),
            ),
            SizedBox(height: 30),
            ButtonEmpezar(),
            Spacer(
              flex: 40,
            ),
          ],
        ),
      ),
    );
  }
}
