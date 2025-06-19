import 'package:flutter/material.dart';
import 'package:chatview/widgets/message_bubble.dart';
import 'package:chatview/models/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        reverse: true,
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          return MessageBubble(message: _messages[index]);
        },
      ),
    );
  }

  final List<Message> _messages = [
    Message(
      id: '1',
      senderId: 'user1',
      content: 'Hello!',
      timestamp: DateTime.now(),
    ),
    Message(
      id: '2',
      senderId: 'user2',
      content: 'Hi there!',
      timestamp: DateTime.now(),
    ),
  ];
}
