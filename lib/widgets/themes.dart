import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        accentColor: darkBluishColor,

        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBluishColor,

        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: Theme.of(context).textTheme.headline6, 

        ));


static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        buttonColor: lightBluishColor,
        accentColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        
        canvasColor: darkCreamColor,
        
        appBarTheme: AppBarTheme(
        
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          
          textTheme: Theme.of(context).textTheme
          .copyWith(headline6: TextStyle(color: Colors.white)), 

        )
      );

static Color creamColor = Color(0xfff5f5f5);
static Color darkCreamColor = Vx.gray900;
static Color lightBluishColor =  Color.fromARGB(255, 94, 72, 207);
static Color darkBluishColor = Color.fromARGB(255, 33, 34, 88);
}
