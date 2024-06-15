import 'package:flutter/material.dart';
import 'package:Genus/dilshad/nav_menubar.dart';

import '../nixon/screens/home_screen.dart';

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
