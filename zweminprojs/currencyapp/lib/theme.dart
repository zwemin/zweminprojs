import 'package:flutter/material.dart';

ThemeData buildThemeData(BuildContext context){
  return ThemeData(
    scaffoldBackgroundColor: Colors.green,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: Colors.amber
    ),
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.white
      ),
      color: Colors.deepOrange
    ),
    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 20,
//        fontFamily: '',
        color: Colors.white,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.black,
            offset: Offset(5.0,5.0)
          )
        ]
      ),
      body1: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
        headline: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
    )

  );
}