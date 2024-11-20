import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/customWidgts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            CenterTextContainer(
                tLeft: 102,
                tHeight: 243,
                cText: "What's your name?",
                fSize: 25,
                tColor: secondryColor),
            CenterTextContainer(
                tHeight: 292,
                tLeft: 56,
                cText: "FIRST NAME",
                fSize: 15,
                tColor: secondryColor),
            TextDivider(indent: 57, endIndent: 100, top: 352),
            CenterTextContainer(
                tHeight: 376,
                tLeft: 56,
                cText: "LAST NAME",
                fSize: 15,
                tColor: secondryColor),
            TextDivider(indent: 57, endIndent: 100, top: 431),
            CenterTextContainer(
                tHeight: 458,
                tLeft: 56,
                cText:
                    "By tapping Signup & Accept you acknowledge that \n you read the privcy Policy and agree the \n Terms Services",
                fSize: 10,
                tColor: brownColor),
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
                            Navigator.pushNamed(context, '/signup_bd_screen');
                          },
                          child: const ReusableButton(
                            btnHeight: 50.0,
                            btnWidth: 210.0,
                            btnColour: secondryColor,
                            btnCircularRadius: 80.0,
                            btnChild: Text(
                              "Sign Up & Accept",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor),
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
