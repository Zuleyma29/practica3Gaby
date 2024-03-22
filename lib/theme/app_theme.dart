// Definicion de los temas de estilos de una app 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255,255,0,0);
  // Constante de color secundario
  static const secondaryColor=Colors.black;
  //Constante de color de fondo
  static const backColor = Color.fromARGB(236, 247, 249, 249);
  static const backColor2 = Color.fromARGB(237, 78, 79, 80);
  
  
  //Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
      size:35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          primaryColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(fontSize: 25.0,)
        )
      )
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
      headlineMedium: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 21.5,
        fontWeight: FontWeight.bold,
      ),

      //Estilo para texto muy pequeno
      bodySmall:GoogleFonts.montserrat(
        color:secondaryColor,
        fontSize: 13.0
      )
    ),
  );
}
