import 'package:flutter/material.dart';
import 'package:practica3ver2/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; // controlar el widget switch
  double sliderValue = 0.0;
  int radioSelected = 0;
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
              entradaNombre(),
              entradaSwitch(),
              entradaSlider(),
              entradaRadio(),
              Text(
                '¿Qué usas para correr tus Apps?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradasCheck(),
              const ElevatedButton(
                  onPressed: null,
                   child: Text(
                    'Gurdar',
                   )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.primaryColor,
        items : const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_exploration),
            label: 'Datos'
            )
        ]
      )
    );
  }

  TextField entradaNombre() {
    return TextField(
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Escribe tu nombre:',
              labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
            )
          );
  }
  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget> [
        Text('¿Te gusta Flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
          value: switchValue,
           onChanged: (value){
            setState((){
              switchValue = value;
            });
           })
      ],
    );
  }
  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Indica que tanto te gusta flutter:',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: AppTheme.secondaryColor,
          thumbColor: AppTheme.primaryColor,
          inactiveColor:AppTheme.backColor2,
          value: sliderValue, 
          divisions: 10,
          label:'${sliderValue.round()}',
        onChanged: (value){
          setState(() {
            sliderValue = value;
            // ignore: avoid_print 
            print('Se cambio el slider: $sliderValue');
          });
        })
      ],
    );
  }

  Column entradaRadio(){
    return Column(
      children: [
        Text(
          '¿Qué prefieres para desarollo móvil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title:Text( 
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue:radioSelected,
              onChanged: (value){
                setState((){
                  radioSelected=value!;
                  // ignore: avoid_print
                print('Seleccion del boton radio: $radioSelected');
                });
              } ,
            ),
          ),
        ),
        ListTile(
          title:Text( 
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue:radioSelected,
              onChanged: (value){
                setState((){
                  radioSelected=value!;
                  // ignore: avoid_print
                print('Seleccion del boton radio: $radioSelected');
                });
              } ,
            ),
          ),
        ),
      ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value:isChecked1,
            onChanged:(value){
              setState(() {
                isChecked1=value!;
              });
            },
          ),
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value:isChecked2,
            onChanged:(value){
              setState(() {
                isChecked2=value!;
              });
            },
          ),
        ),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value:isChecked3,
            onChanged:(value){
              setState(() {
                isChecked3=value!;
              });
            },
          ),
        ),
      ],
    );
  }
}