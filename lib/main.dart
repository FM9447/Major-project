import 'package:flutter/material.dart';
import 'package:secondapp/pages/login.dart';
import 'package:secondapp/pages/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
