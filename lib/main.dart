import 'package:thena/screens/drawer_screen.dart';
import 'package:thena/screens/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
