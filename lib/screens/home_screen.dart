import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('KC campeones deel Super Bowl 58'),
            subtitle: Text('Las Vegas -11/02/2024'),
            leading: Icon(Icons.casino),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('KC campeones deel Super Bowl 57'),
            subtitle: Text('Arizona -10/02/2023'),
            leading: Icon(Icons.price_check_sharp),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('KC campeones deel Super Bowl 54'),
            subtitle: Text('Miami -02/02/2020'),
            leading: Icon(Icons.beach_access),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
     ),
    );
  }
}