import 'package:flutter/material.dart';
import 'package:Genus/nav_menubar.dart';

void main() {
  runApp(MyApp());
  runApp(MaterialApp(
    home: ColorfulNavigationBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genus...',
      color: Colors.red,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
