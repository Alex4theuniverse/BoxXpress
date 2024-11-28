import 'package:boxxpress/widgets/boton.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/telefono.dart';

// ignore: camel_case_types
class verificacion extends StatefulWidget {
  const verificacion({super.key, required this.title});

  final String title;

  @override
  State<verificacion> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<verificacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Codigo de verificación',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Dirección del gradiente
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4682B4), // Color inicial
              Color(0xFF757575), // Color final
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Código de verificación',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Por favor, introduzca el código que acabamos de enviarle a su correo electrónico',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54),
                      ),
                      const Text(
                        'heberS@email.com',
                        style: TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) => SizedBox(
                            width: 50,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Acción para reenviar código
                        },
                        child: const Text(
                          '¿No has recibido el código? Reenviar',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF2C2C2C), // Color inicial
                                Color(0xFF56CCF2), // Color final
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Mybton())
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
