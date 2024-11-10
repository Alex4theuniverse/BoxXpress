import 'package:flutter/material.dart';

import 'pages/login.dart';

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
            image: AssetImage('../assets/images/image.png'), // Imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Box Xpress',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 80,
              backgroundImage:
                  AssetImage('../assets/images/carrito.png'), // Imagen del logo
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 30),
            const Text(
              '¡Bienvenido a BoxXpress! Optimiza tus entregas con rastreo en tiempo real y soporte dedicado.\n¡Comencemos!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 242, 237, 237),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 12, 101, 145), // Color del botón
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text(
                'Empezar',
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
            const Spacer(),
            BottomNavigationBar(
              backgroundColor: Colors.black.withOpacity(0.8),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon:
                      Icon(Icons.home, color: Color.fromARGB(255, 181, 16, 16)),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu, color: Colors.white),
                  label: '',
                ),
              ],
              onTap: (index) {
                // Manejo de la navegación de los íconos
              },
            ),
          ],
        ),
      ),
    );
  }
}
