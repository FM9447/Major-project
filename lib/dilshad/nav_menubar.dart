/* import 'package:flutter/material.dart';
import 'package:secondapp/pages/sell_list.dart';
import 'package:secondapp/dilshad/Account/account_page.dart';
import 'package:secondapp/dilshad/chat_page.dart';

class ColorfulNavigationBar extends StatefulWidget {
  const ColorfulNavigationBar({super.key});

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Genus',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white, size: 28),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SearchPage(),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        toolbarHeight: kToolbarHeight + 10, // Adjusting the height
      ),
      body: Center(
        child: Container(
          child: const Text('Selected option is: '),
        ),
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
      onPressed: () {},
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
      home: ColorfulNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
} */
