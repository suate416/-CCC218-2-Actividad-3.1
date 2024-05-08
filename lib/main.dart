import 'package:flutter/material.dart';
import 'package:whatsapp_application_1/widget/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 @override
Widget build(BuildContext context) {
  return MaterialApp(
     debugShowCheckedModeBanner: false,
    title: 'Menu Drawer APP',
    home: MyHomePage(),
   

    );
  
}}

