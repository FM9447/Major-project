import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Genus/nixon/configuration.dart';
import 'package:Genus/nixon/widgets/pet_categories.dart';
import 'package:Genus/nixon/widgets/pet_category_display.dart';
import 'package:Genus/nixon/widgets/search_bar.dart';
import 'package:Genus/dilshad/nav_menubar.dart';
import 'package:Genus/pages/sell_list.dart';
import 'package:Genus/dilshad/Account/account_page.dart';
import 'package:Genus/dilshad/chat_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        PetCategories(),
        PetCategoryDisplay(),
      ],
    );
  }
}

class ColorfulNavigationBar extends StatefulWidget {
  const ColorfulNavigationBar({Key? key});

  @override
  _ColorfulNavigationBarState createState() => _ColorfulNavigationBarState();
}

class _ColorfulNavigationBarState extends State<ColorfulNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        _navigateToPage(SellPage());
      } else if (_selectedIndex == 1) {
        _navigateToPage(ChatPage(
          user: User(name: 'ExampleUser', emoji: '😊'),
        ));
      }
    });
  }

  Future<void> _navigateToPage(Widget page) async {
    await Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOutQuad;
          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genus'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchPage(),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _selectedIndex == 0 ? HomeScreen() : Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: 'Window',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      drawer: _selectedIndex == 4 ? AccountDrawer() : null,
    );
  }
}

class SearchPage extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        //   close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Handle the results based on the query
    return Center(
      child: Text('Results: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Handle suggestions based on the query
    return Center(
      child: Text('Suggestions: $query'),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genus',
      color: Colors.red,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorfulNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
