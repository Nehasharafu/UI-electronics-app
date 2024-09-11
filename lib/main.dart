import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/productpage.dart';
import 'package:flutter_application_1/main.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electrons',
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      routes: {
        '/product':(context) =>
        ProductPage(),
      },
    );
  }

}

