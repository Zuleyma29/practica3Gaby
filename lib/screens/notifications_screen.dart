import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'home_screen.dart';
import 'images_screen.dart';
import 'infinite_scroll_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int indexNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Notificaciones'),
      ),
      body: Container(
        // Aquí puedes colocar el contenido de tu pantalla
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.primaryColor, // Cambia esto a tu color preferido
        unselectedItemColor: AppTheme.primaryColor,
        selectedItemColor: Colors.amber,
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imágenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          )
        ],
      ),
    );
  }

  void openScreen(int index, BuildContext context) {
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen());

    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }
}