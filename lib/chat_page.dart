import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // ListView to display messages
              padding: EdgeInsets.all(16.0),
              children: [
                // Sample message with user emoji
                MessageWidget(
                  message: 'Hello! How are you?',
                  isUser: true,
                ),
                // Another sample message
                MessageWidget(
                  message: 'Hi there! I am good.',
                  isUser: false,
                ),
                // Add more messages as needed
              ],
            ),
          ),
          // Message input box and send button
          MessageInputWidget(),
        ],
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String message;
  final bool isUser;

  MessageWidget({
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
          isUser
              ? Text('😊') // User emoji
              : Text('🤖'), // Bot emoji or other user's emoji
        ],
      ),
    );
  }
}

class MessageInputWidget extends StatelessWidget {
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
