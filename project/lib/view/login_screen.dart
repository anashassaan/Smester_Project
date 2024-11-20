import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/customWidgts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            CenterTextContainer(
                tLeft: 158,
                tHeight: 232,
                cText: "Log In",
                fSize: 30,
                tColor: blackColor),
            CenterTextContainer(
                tHeight: 292,
                tLeft: 56,
                cText: "USERNAME OR EMAIL",
                fSize: 15,
                tColor: secondryColor),
            TextDivider(indent: 57, endIndent: 100, top: 352),
            CenterTextContainer(
                tHeight: 376,
                tLeft: 56,
                cText: "PASSWARD",
                fSize: 15,
                tColor: secondryColor),
            TextDivider(indent: 57, endIndent: 100, top: 431),
            CenterTextContainer(
                tHeight: 458,
                tLeft: 131,
                cText: "Forgot Your Passward?",
                fSize: 15,
                tColor: secondryColor),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/getstarted_screen');
                          },
                          child: const ReusableButton(
                            btnHeight: 50.0,
                            btnWidth: 210.0,
                            btnColour: secondryColor,
                            btnCircularRadius: 80.0,
                            btnChild: Text(
                              "Log in",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
