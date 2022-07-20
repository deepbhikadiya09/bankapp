import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>FirstPage(),
        '/SecondPage':(context)=>SecondPage(),
      },
    ),
  );
}