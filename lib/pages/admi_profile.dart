import 'package:flutter/material.dart';

class AdmiProfile extends StatelessWidget {
  const AdmiProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("../../assets/images/raulmenendes2.jpg"),
                  fit: BoxFit.fill)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Administrador Perfil',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: const [
          Icon(
            Icons.assignment_ind_outlined,
            color: Colors.white,
          ),
        ],
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('../../assets/images/raulmenendes2.jpg'),
            ),
            const SizedBox(height: 5),
            const Text(
              'RAUL MENENDEZ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.black),
              onPressed: () {
                // Acción al presionar el botón de editar los datos del admin
              },
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.grey,
              height: 3,
            ),
            const ListTile(
              title: Text(
                'Nombre usuario',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('hebe el joker'),
            ),
            const ListTile(
              title: Text(
                'Email I’d',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('yanchui@gmail.com'),
            ),
            const ListTile(
              title: Text(
                'Phone Number',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('+14987889999'),
            ),
            const ListTile(
              title: Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('*************'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción al actualizar
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                child:
                    Text('actualizar', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
