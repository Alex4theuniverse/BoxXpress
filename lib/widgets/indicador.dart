import 'package:flutter/material.dart';

// ignore: camel_case_types
class indicadores extends StatelessWidget {
  final String text;
  final bool valido;

  const indicadores({
    super.key,
    required this.text,
    required this.valido,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          valido ? Icons.check : Icons.close,
          color: valido ? Colors.green : Colors.red,
          size: 20,
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
