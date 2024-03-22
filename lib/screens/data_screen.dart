import 'package:flutter/material.dart';
import '../models/data.dart';
import '../theme/app_theme.dart';
import 'home_screen.dart';
import 'images_screen.dart';
import 'infinite_scroll_screen.dart';
import 'notifications_screen.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen ({super.key, required this.datos});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  String? nombre;
  bool switchValue = false; // controlar el widget switch
  double sliderValue = 0.0;
  int radioSelected = 0;
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  int indexNavigation = 0;
  String name = '';
  bool like = false;

  @override
  Widget build(BuildContext context) {
    String? Flutter;
    if(widget.datos.gustoFlutter == true){
      Flutter = 'Si';
    }else{
      Flutter= 'No';
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Nombre: ',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
              subtitle: Text(
                widget.datos.nombre!,
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            ),
          const Divider(),
          ListTile(
            title:Text( 'A ${widget.datos.nombre} le gusta flutter?',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            subtitle: Text(Flutter,
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'La calificacion de Flutter para ${widget.datos.nombre} es de : ',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
              subtitle: Text(
                widget.datos.califFlutter.toString(),
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            ),
            const Divider(),
            ListTile(
            title: Text(
              'Lo que lo que prefiere ${widget.datos.nombre} para desarrollo móvil es : ',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
              subtitle: Text(
               (widget.datos.gustoFlutter ?? false) ? 'Flutter' : 'Kotlin',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            ),
            const Divider(),
            ListTile(
            title: Text(
              '${widget.datos.nombre} corre sus apps en  : ',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
              ///////////////////////////////////////////////////////////
            ),
          ],
        // Aquí puedes colocar el contenido de tu pantalla
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.primaryColor, // Cambia esto a tu color preferido
        unselectedItemColor: AppTheme.secondaryColor,
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

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Entradas'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text('Tu nombre es:',
            style:TextStyle(color: Colors.black, fontSize:20.0,fontWeight: FontWeight.bold)),
            Text('Te gusta flutter:',
            style:TextStyle(color: Colors.black, fontSize:20.0,fontWeight: FontWeight.bold)),
            Text('Cuanto te gusta flutter:',
            style:TextStyle(color: Colors.black, fontSize:20.0,fontWeight: FontWeight.bold)),
            Text('Que prefieres kotlin o flutter:',
            style:TextStyle(color: Colors.black, fontSize:20.0,fontWeight: FontWeight.bold)),
            Text('Que emulador usas :',
            style:TextStyle(color: Colors.black, fontSize:20.0,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.primaryColor,
        unselectedItemColor: AppTheme.secondaryColor,
        selectedItemColor: Colors.amber,
        onTap:(index) => openScreen(index, context),
        items : const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notoficaciones '
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir '
            )
        ]
      )
    );
   }
  }
}
