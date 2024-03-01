import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Account Settings'),
              subtitle: Text('Manage your account preferences'),
              leading: Icon(Icons.account_circle),
              onTap: () {
                // Add navigation or functionality for Account Settings
              },
            ),
            Divider(),
            ListTile(
              title: Text('Notification Settings'),
              subtitle: Text('Customize your notifications'),
              leading: Icon(Icons.notifications),
              onTap: () {
                // Add navigation or functionality for Notification Settings
              },
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Settings'),
              subtitle: Text('Control your privacy preferences'),
              leading: Icon(Icons.lock),
              onTap: () {
                // Add navigation or functionality for Privacy Settings
              },
            ),
            Divider(),
            ListTile(
              title: Text('Appearance'),
              subtitle: Text('Change the app theme and appearance'),
              leading: Icon(Icons.palette),
              onTap: () {
                // Add navigation or functionality for Appearance
              },
            ),
          ],
        ),
      ),
    );
  }
}
