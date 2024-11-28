import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isPasswordValid = false;
  bool isNumberIncluded = false;
  bool isMinLength = false;
  bool isUpperLowerIncluded = false;
  bool termsAccepted = false;

  void validatePassword(String password) {
    setState(() {
      isMinLength = password.length >= 8;
      isNumberIncluded = password.contains(RegExp(r'[0-9]'));
      isUpperLowerIncluded = password.contains(RegExp(r'[a-zA-Z]'));
      isPasswordValid = isMinLength && isNumberIncluded && isUpperLowerIncluded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear cuenta y elegir menú favorito"),
        backgroundColor: const Color(0xFF007BB6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, // Asignación de la clave del formulario
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Crear cuenta y elegir menú favorito 🪪",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Regístrate y selecciona tus opciones de envío preferidas",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                const Text("Nombres"),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Ingrese sus nombres",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tus nombres';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text("Apellidos"),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Ingrese sus apellidos",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tus apellidos';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text("Fecha de Nacimiento"),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Ingrese su fecha de nacimiento",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tu fecha de nacimiento';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text("Número"),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Ingrese su número",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tu número';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text("Email"),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Ingrese tu correo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tu correo';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text("Nombre de usuario"),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Ingrese su nombre de usuario",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tu nombre de usuario';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                const Text("Password"),
                const SizedBox(height: 8),
                TextFormField(
                  controller: passwordController,
                  onChanged: validatePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Ingrese su contraseña",
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa tu contraseña';
                    }
                    if (!isPasswordValid) {
                      return 'La contraseña no cumple con los requisitos';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                const Text("Confirmar Password"),
                const SizedBox(height: 8),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirme la contraseña",
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, confirma tu contraseña';
                    }
                    if (value != passwordController.text) {
                      return 'Las contraseñas no coinciden';
                    }
                    return null;
                  },
                ),
                // Verificaciones de contraseña
                Row(
                  children: [
                    Icon(
                      isMinLength ? Icons.check : Icons.close,
                      color: isMinLength ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 8),
                    const Text("Mínimo 8 caracteres"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      isNumberIncluded ? Icons.check : Icons.close,
                      color: isNumberIncluded ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 8),
                    const Text("Al menos 1 número (1-9)"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      isUpperLowerIncluded ? Icons.check : Icons.close,
                      color: isUpperLowerIncluded ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 8),
                    const Text("Al menos letras minúsculas o mayúsculas"),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: termsAccepted,
                      onChanged: (value) {
                        setState(() {
                          termsAccepted = value ?? false;
                        });
                      },
                    ),
                    const Text("Aceptar términos y Condiciones"),
                  ],
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (termsAccepted) {
                          // Registro exitoso
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Debe aceptar los términos y condiciones'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text("Registrarse"),
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
