import 'package:flutter/material.dart';

class User {
  final String name;
  final String emoji;

  User({
    required this.name,
    required this.emoji,
  });
}

class ChatPage extends StatelessWidget {
  final User user;

  ChatPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                ChatMessage(
                  message: 'Hello! How are you?',
                  isUser: true,
                ),
                ChatMessage(
                  message: 'Hi there! I am good.',
                  isUser: false,
                ),
                // Add more messages as needed
              ],
            ),
          ),
          MessageInput(),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isUser;

  ChatMessage({
    required this.message,
    required this.isUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: isUser ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 4.0),
          isUser ? Text('😊') : Text('🤖'),
        ],
      ),
    );
  }
}

class MessageInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          ElevatedButton(
            onPressed: () {
              // Handle send button click
            },
            child: Text('Send'),
          ),
        ],
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
      home: ChatPage(
        user: User(name: 'User1', emoji: '😊'),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
