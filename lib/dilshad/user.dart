import 'package:flutter/material.dart';
import 'package:secondapp/dilshad/chat_page.dart';

class UserListWidget extends StatelessWidget {
  final List<User> users;

  UserListWidget({required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Genus Users',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _navigateToChatPage(context, users[index]);
            },
            child: Card(
              elevation: 3.0,
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ListTile(
                title: Text(
                  users[index].name,
                  style: TextStyle(fontSize: 18.0),
                ),
                subtitle: Text(
                  'Emoji: ${users[index].emoji}',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    users[index].emoji,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToChatPage(BuildContext context, User user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(user: user),
      ),
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
      title: 'Genus...',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListWidget(
        users: [
          User(name: 'User1', emoji: '😊'),
          User(name: 'User2', emoji: '🤖'),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
