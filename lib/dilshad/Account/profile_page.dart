import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(
                  'assets/profile_image.jpg'), // Add your image asset
            ),
            SizedBox(height: 16.0),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Web Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality for editing profile
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Email'),
              subtitle: Text('john.doe@example.com'),
              leading: Icon(Icons.email),
            ),
            Divider(),
            ListTile(
              title: Text('Phone'),
              subtitle: Text('+1 123 456 7890'),
              leading: Icon(Icons.phone),
            ),
            Divider(),
            ListTile(
              title: Text('Location'),
              subtitle: Text('City, Country'),
              leading: Icon(Icons.location_on),
            ),
          ],
        ),
      ),
    );
  }
}
