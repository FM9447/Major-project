import 'package:flutter/material.dart';
import 'package:Genus/sell_page.dart';
import 'package:Genus/Account/account_page.dart';
import 'package:Genus/Account/profile_page.dart';
import 'package:Genus/Account/advertisement_page.dart';
import 'package:Genus/Account/settings_page.dart';

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
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genus...'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          // color: _colors[_selectedIndex],
          child: const Text(
              //'Selected Color: ${_colors[_selectedIndex].toString()}',
              // style: TextStyle(fontSize: 24, color: Colors.white),
              'Selected option is: '),
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
            icon: Icon(Icons.favorite),
            label: 'My Ads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      drawer: _selectedIndex == 4 ? AccountDrawer() : null,
    );
  }
}
