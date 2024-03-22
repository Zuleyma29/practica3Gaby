import 'package:flutter/material.dart';
import 'package:practica3ver2/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

import 'home_screen.dart';
import 'infinite_scroll_screen.dart';
import 'notifications_screen.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int indexNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView(
        children: [
          cardImage1(),
          imageFade(),
        ],
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

  Card cardImage1(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
        ),
        margin: const EdgeInsets.all(15),
        elevation: 10,
      child: ClipRRect(
        borderRadius:BorderRadius.circular(30),
        child: Column(
        children: [
          const Image(
            image: AssetImage('assets/img/Caballos.jpg'),
            ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Una pintura de caballos',
              style:AppTheme.lightTheme.textTheme.headlineMedium
            ),
          )
        ],
      ),
      ),
    );
  }
  SizedBox image2(){
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child:Image.network(
        'https://www.nationalgeographic.com.es/medio/2022/12/12/caballo-1_c26bdfb7_221212154643_1280x720.jpg'),
    );
  }

  Stack imageFade(){
    return Stack (
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder:kTransparentImage, 
            image: 'https://www.nationalgeographic.com.es/medio/2022/12/12/caballo-1_c26bdfb7_221212154643_1280x720.jpg'),
        )
      ],
    );
}
