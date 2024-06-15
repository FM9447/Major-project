import 'package:flutter/material.dart';
import 'package:Genus/pages/login.dart';
import 'package:Genus/pages/register.dart';
import 'package:Genus/sreerag/onboarding_screen.dart';
import 'package:Genus/sreerag/onboarding_contents.dart';


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
