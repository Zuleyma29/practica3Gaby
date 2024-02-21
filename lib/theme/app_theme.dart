// Definicion de los temas de estilos de una app 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255,255,0,0);
  // Constante de color secundario
  static const secondaryColor=Colors.black;

  //Constante de color de fondo
  static const backColor = Color.fromARGB(238, 237, 239, 240);
  
  //Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
    ),
    textTheme: TextTheme(
      // Titulos muy grandes
      headlineLarge: GoogleFonts.montserrat(
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: primaryColor,
        decorationStyle: TextDecorationStyle.dotted,
        decorationThickness: 1.0,
      ),
      //Estilo para exto muy pequeno
      bodySmall:GoogleFonts.montserrat(
        color:secondaryColor,
        fontSize: 13.0

      )
    ),
  );
}