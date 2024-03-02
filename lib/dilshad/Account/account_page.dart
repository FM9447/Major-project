import 'package:flutter/material.dart';
import 'package:secondapp/dilshad/Account/profile_page.dart';
import 'package:secondapp/dilshad/Account/advertisement_page.dart';
import 'package:secondapp/dilshad/Account/settings_page.dart';
import 'package:secondapp/dilshad/Account/order_page.dart';

class AccountDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.account_circle,
                    size: 60.0,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'User Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ad_units),
            title: Text('Advertisements'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdvertisementsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('My Order'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
