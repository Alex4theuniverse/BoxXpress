import 'package:flutter/material.dart';

class Desplazante extends StatelessWidget {
  const Desplazante({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const SizedBox(
          height: 120,
          child: DrawerHeader(
            decoration: BoxDecoration(color: Colors.tealAccent),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage("assetName"), radius: 40),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Juan Orihuela",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "juansoq12@gmail.com",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text("Perfil"),
          onTap: () {},
        ),
        const Divider(
          height: 5,
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.add_alert),
          title: const Text("Ajustes de notificaciones"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.assessment_rounded),
          title: const Text("About us"),
          onTap: () {},
        ),
        const Divider(
          height: 5,
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.logout_rounded),
          title: const Text("Cerrar sesión"),
          onTap: () {},
        ),
      ],
    ));
  }
}
