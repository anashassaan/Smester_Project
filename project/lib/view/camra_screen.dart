import 'package:flutter/material.dart';

import 'package:project/utils/customWidgts.dart';

class CamraScreen extends StatefulWidget {
  const CamraScreen({super.key});

  @override
  State<CamraScreen> createState() => _CamraScreenState();
}

class _CamraScreenState extends State<CamraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assests/Images/background_image.png',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 95, top: 650),
              child: Container(
                width: 32,
                child: Image.asset(
                  'assests/Icons/camra_screen_icon.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650, left: 20),
              child: CircleContainer(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 650),
              child: Container(
                width: 32,
                child: Image.asset(
                  'assests/Icons/camra_filters.png',
                ),
              ),
            ),
          ],
        ),
        App_emoji_search(
          inputText: " ",
        ),
      ],
    ));
  }
}
