import 'package:boxxpress/widgets/drawer.dart';
import 'package:boxxpress/widgets/my_bar.dart';
import 'package:flutter/material.dart' as material;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> imageUrls = [
    "https://images.pexels.com/photos/1839564/pexels-photo-1839564.jpeg",
    "https://images.pexels.com/photos/2538122/pexels-photo-2538122.jpeg",
    "https://images.pexels.com/photos/29462648/pexels-photo-29462648/free-photo-of-military-cosplay-with-gas-mask-and-rifle.jpeg",
    "https://images.pexels.com/photos/7299484/pexels-photo-7299484.jpeg",
    "https://images.pexels.com/photos/7299582/pexels-photo-7299582.jpeg",
    "https://images.pexels.com/photos/7955074/pexels-photo-7955074.jpeg"
  ];

  final List<Map<String, dynamic>> gridItems = [
    {"icon": Icons.home, "label": "Inicio"},
    {"icon": Icons.shop, "label": "Tienda"},
    {"icon": Icons.contact_mail, "label": "Contacto"},
    {"icon": Icons.info, "label": "Acerca de"},
    {"icon": Icons.settings, "label": "Configuración"},
    {"icon": Icons.favorite, "label": "Favoritos"},
    {"icon": Icons.share, "label": "Compartir"},
    {"icon": Icons.map, "label": "Mapa"},
    {"icon": Icons.help, "label": "Ayuda"},
  ];

  final List<Map<String, dynamic>> socialMedia = [
    {"icon": FontAwesomeIcons.facebook, "label": "Facebook"},
    {"icon": FontAwesomeIcons.twitter, "label": "Twitter"},
    {"icon": FontAwesomeIcons.instagram, "label": "Instagram"},
    {"icon": FontAwesomeIcons.linkedin, "label": "LinkedIn"},
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyBar(),
      drawer: const Desplazante(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: imageUrls.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 10),
                      decoration: const BoxDecoration(
                          color: material.Color.fromARGB(255, 236, 241, 236)),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),

            // GridView Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          gridItems[index]['icon'],
                          size: 40,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          gridItems[index]['label'],
                          style: const TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Social Media Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Síguenos en nuestras redes sociales:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: socialMedia.map((social) {
                return Column(
                  children: [
                    Icon(
                      social['icon'],
                      size: 40,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 8),
                    Text(social['label']),
                  ],
                );
              }).toList(),
            ),
            const SizedBox(height: 20),

            // Contact Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Contacto:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Dirección: Av. Siempre Viva 123, Lima, Perú\n"
                "Teléfono: +51 999 999 999\n"
                "Correo: contacto@empresa.com",
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
