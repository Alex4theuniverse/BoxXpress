import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<Map<String, String>> notifications = [
    {'title': 'De: Chofer// Heber Sayago', 'subtitle': 'Su pedido en camino esta en camino'},
    {'title': 'De: Chofer', 'subtitle': 'Estado del pedido.'},
    {'title': 'De: Chofer', 'subtitle': 'Estado del pedido.'},
    {'title': 'De: Chofer', 'subtitle': 'Estado del pedido.'},
    {'title': 'De: Chofer', 'subtitle': 'Estado del pedido.'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Notificaciones'),
        actions: [
          TextButton(
            onPressed: () {},
            child:const Text(
              'Show all',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:const Icon(Icons.mail, color: Colors.red),
            title: Text(notifications[index]['title']!),
            subtitle: Text(notifications[index]['subtitle']!),
            trailing: PopupMenuButton(
              onSelected: (value) {
                if (value == 'read') {
                  // Acción para marcar como leído
                  ScaffoldMessenger.of(context).showSnackBar(
                  const  SnackBar(content: Text('Notificación marcada como leída')),
                  );
                } else if (value == 'delete') {
                  // Acción para borrar la notificación
                  ScaffoldMessenger.of(context).showSnackBar(
                  const  SnackBar(content: Text('Notificación eliminada')),
                  );
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'read',
                  child: Text('Marcar como leído'),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Borrar'),
                ),
              ],
              icon:const Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}