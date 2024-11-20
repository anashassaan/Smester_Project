import 'package:flutter/material.dart';
import 'package:project/utils/customWidgts.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [App_emoji_search(inputText: "Location")],
      ),
    );
  }
}
