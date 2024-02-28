import 'package:flutter/material.dart';
import 'package:Genus/nav_menubar.dart';
import 'package:Genus/sell_page.dart';
import 'package:Genus/Account/account_page.dart';

void main() {
  runApp(MyApp());
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
      home: ColorfulNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColorfulNavigationBar extends StatefulWidget {
  @override
  _ColorfulNavigationBarState createState() => _ColorfulNavigationBarState();
}

class _ColorfulNavigationBarState extends State<ColorfulNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SellPage()),
        );
      } else if (_selectedIndex == 1) {
        // Check if "Chats" is selected
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChatPage()), // Navigate to ChatPage
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Genus...'),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add your logic for the search functionality here
              },
            ),
          ],
        ),
        backgroundColor: Colors.blue,
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
    );
  }
}
