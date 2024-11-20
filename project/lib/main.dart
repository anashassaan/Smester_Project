import 'package:flutter/material.dart';
import 'package:project/view/Intial_Screen.dart';
import 'package:project/view/camra_screen.dart';
import 'package:project/view/chat.dart';
import 'package:project/view/getstarted_screen.dart';
import 'package:project/view/home_screen.dart';
import 'package:project/view/location_screen.dart';
import 'package:project/view/login_screen.dart';
import 'package:project/view/signup_bd_screen.dart';
import 'package:project/view/signup_screen.dart';
import 'package:project/view/stories.dart';

void main() {
  runApp(const snapchat());
}

class snapchat extends StatelessWidget {
  const snapchat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF838486),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        // '/': (context) => const LoginScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/signup_screen': (context) => const SignupScreen(),
        '/signup_bd_screen': (context) => const SignupBdScreen(),
        '/getstarted_screen': (context) => const GetstartedScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/location_screen': (context) => const LocationScreen(),
        '/chat': (context) => const ChatScreen(),
        '/camra_screen': (context) => const CamraScreen(),
        '/stories': (context) => const StoriesScreen(),
        '/videos': (context) => const LocationScreen(),
      },
    );
  }
}
