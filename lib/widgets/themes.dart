import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
         primaryColorLight: const Color.fromARGB(255, 1, 20, 35),
          cardColor: const Color.fromARGB(255, 235, 235, 237),
        secondaryHeaderColor: darkBluishColor,
           floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 100, 82, 173),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
        appBarTheme:const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            // alignSelf: Alignment.center,
            
          ),
        ),
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    
    // primarySwatch: Colors.deepPurple,
    cardColor: const Color.fromARGB(255, 7, 26, 44),
    cardTheme: const CardTheme(
      color: Color.fromARGB(255, 92, 164, 232),
      elevation: 0.0,
    ),
    primaryColorLight: const Color.fromARGB(255, 233, 237, 240),
    canvasColor: const Color.fromARGB(255, 12, 20, 30),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  
    secondaryHeaderColor: Colors.white ,
    fontFamily: GoogleFonts.poppins().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme:const AppBarTheme(
          color: Color.fromARGB(255, 2, 24, 43),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 238, 238, 238),
          ),
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 227, 227, 227),
            fontSize: 20,
            // alignSelf: Alignment.center,
          ),
          
//  foregroundColor: Colors.white,    
toolbarTextStyle: TextStyle(color: Colors.white),     
        ),
  );

static Color creamColor = const Color(0xFFF5F5F5);
static Color darkBluishColor = const Color(0xFF403b58);
static Color darkcreamColor = const Color.fromARGB(255, 19, 15, 42);
static Color lightBluishColor = const Color.fromARGB(255, 90, 67, 202);

}
