import 'package:flutter/material.dart';
import 'package:Genus/Account/profile_page.dart';
import 'package:Genus/Account/advertisement_page.dart';
import 'package:Genus/Account/settings_page.dart';
import 'package:Genus/Account/order_page.dart';

class AccountDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            title: Text('Advertisements'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdvertisementsPage()),
              );
            },
          ),
          ListTile(
            title: Text('My Order'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
          ),
          ListTile(
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
