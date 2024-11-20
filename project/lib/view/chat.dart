import 'package:flutter/material.dart';
import 'package:project/utils/customWidgts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> items = List<String>.generate(100, (i) => "User NO $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const App_emoji_search(inputText: "Chat"),
          Padding(
            padding: const EdgeInsets.only(
              left: 4,
              top: 114,
            ),
            child: Container(
                width: 390, height: 688, child: ChatList(items: items)),
          ),
        ],
      ),
    );
  }
}
