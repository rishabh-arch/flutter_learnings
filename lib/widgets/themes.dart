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
    
  );

static Color creamColor = Color(0xFFF5F5F5);
static Color darkBluishColor = Color(0xFF403b58);

}
