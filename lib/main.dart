import 'package:flutter/material.dart';
import 'package:map_rendering/pages/map_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Map Rendering',
      debugShowCheckedModeBanner: false,
      home: MapPage(),
    );
  }
}
