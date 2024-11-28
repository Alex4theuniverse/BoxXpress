import 'package:flutter/material.dart';

class MyBar extends StatelessWidget implements PreferredSizeWidget {
  const MyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Menu Principal",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Abre el Drawer
            },
          );
        },
      ),
      actions: const [
        CircleAvatar(
          radius: 30, // Tamaño de la imagen de perfil
          backgroundImage: AssetImage("../../assets/images/raulmenendes2.jpg"),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
