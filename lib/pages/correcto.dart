import 'package:boxxpress/widgets/boton.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class celebracion extends StatelessWidget {
  const celebracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4682B4), Color(0xFF757575)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen de celebración
            Image.asset(
              "../../assets/images/fireworks-.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),

            // Mensaje de confirmación
            const Text(
              '¡Contraseña cambiada!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),

            // Texto de confirmación adicional
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'La contraseña se cambió correctamente, puedes iniciar sesión nuevamente con una nueva contraseña',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Botón de continuar
            const Mybtn3()
          ],
        ),
      ),
    );
  }
}
