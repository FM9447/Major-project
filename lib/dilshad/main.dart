import 'package:flutter/material.dart';
import 'package:secondapp/dilshad/nav_menubar.dart';

void main() {
  runApp(MyApp());
  runApp(MaterialApp(
    home: ColorfulNavigationBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class menu extends StatelessWidget {
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
