import 'package:aprenda_ingles/Home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Color(0xff795548),
        // accentColor: Colors.green
        scaffoldBackgroundColor: Color(0xfff5e9b9),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}