import 'package:flutter/material.dart';
import 'package:project/utils/customWidgts.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [App_emoji_search(inputText: "Discover")],
      ),
    );
  }
}
