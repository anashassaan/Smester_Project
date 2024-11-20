import 'package:flutter/material.dart';
import 'package:project/utils/customWidgts.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [App_emoji_search(inputText: "Stories")],
      ),
    );
  }
}
