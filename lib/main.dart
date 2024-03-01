import 'package:flutter/material.dart';
import 'package:secondapp/pages/login.dart';
import 'package:secondapp/pages/register.dart';
import 'package:secondapp/sreerag/onboarding_screen.dart';
import 'package:secondapp/sreerag/onboarding_contents.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
