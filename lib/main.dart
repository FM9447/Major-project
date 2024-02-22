/*
import 'package:flutter/material.dart';


//import 'package:t_store/app.dart';
import 'package:t_store/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme);
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
*/
import 'package:flutter/material.dart';
//import 'package:Genus/bottom_navigationbar.dart';
import 'package:Genus/nav_menubar.dart';
//import 'package:Genus/menu.dart';

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
      //home: MyHomePage(),
    );
  }
}
