import 'package:boxxpress/pages/new_password.dart';
import 'package:boxxpress/widgets/indicador.dart';
import 'package:flutter/material.dart';

class NP extends StatefulWidget {
  const NP({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _NPState createState() => _NPState();
}

class _NPState extends State<NP> {
  bool oscuro = true; // Controla visibilidad de nueva contraseña
  bool oscuroC = true; // Controla visibilidad de confirmación de contraseña

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Contraseña',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4682B4),
              Color(0xFF757575),
            ],
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Crea tu nueva contraseña',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Crea tu nueva contraseña para que puedas iniciar sesión en tu cuenta.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Nueva contraseña',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    obscureText: oscuro,
                    decoration: InputDecoration(
                      hintText: "Ingrese una nueva contraseña",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                            oscuro ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              oscuro = !oscuro;
                            });
                          }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Column(
                    children: [
                      indicadores(
                        text: 'Mínimo 8 caracteres',
                        valido: false,
                      ),
                      indicadores(
                        text: 'Al menos 1 número (1-9)',
                        valido: true,
                      ),
                      indicadores(
                        text: 'Al menos letras minúsculas o mayúsculas',
                        valido: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Confirma tu contraseña',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    obscureText: oscuroC,
                    decoration: InputDecoration(
                      hintText:
                          'Ingrese la misma contraseña escrita anteriormente',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          oscuroC ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            oscuroC = !oscuroC;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF2C2C2C),
                          Color(0xFF56CCF2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PasswordChangedScreen(), // Llamar a la nueva pantalla
                          ),
                        );
                        // Acción para continuar
                      },
                      child: const Text(
                        'Enviar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
