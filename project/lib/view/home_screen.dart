import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/view/camra_screen.dart';
import 'package:project/view/chat.dart';
import 'package:project/view/location_screen.dart';
import 'package:project/view/stories.dart';
import 'package:project/view/videos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  static const List<Widget> _widgetOptions = <Widget>[
    LocationScreen(),
    ChatScreen(),
    CamraScreen(),
    StoriesScreen(),
    VideoScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brownColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 58,
        color: blackColor,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_rear_outlined),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_rear_outlined),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check_circle),
              label: ' ',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
