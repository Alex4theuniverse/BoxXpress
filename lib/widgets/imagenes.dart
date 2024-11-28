import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  final String imagePath;
  const Myimage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath), // Ruta de la imagen
          fit: BoxFit.cover, // Ajuste de la imagen
        ),
        borderRadius: BorderRadius.circular(15), // Bordes redondeados opcionales
      ),
      height: 200, // Altura del contenedor
      width: double.infinity, // Anchura del contenedor
    );
  }
}
