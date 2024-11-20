import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/customWidgts.dart';

class SignupBdScreen extends StatelessWidget {
  const SignupBdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            CenterTextContainer(
                tLeft: 70,
                tHeight: 243,
                cText: "What's your birthday?",
                fSize: 25,
                tColor: secondryColor),
            CenterTextContainer(
                tHeight: 292,
                tLeft: 56,
                cText: "BIRTHDAY",
                fSize: 15,
                tColor: secondryColor),
            TextDivider(indent: 57, endIndent: 100, top: 352),
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
                          child: const Padding(
                            padding: EdgeInsets.only(top: 200),
                            child: ReusableButton(
                              btnHeight: 58.0,
                              btnWidth: 210.0,
                              btnColour: secondryColor,
                              btnCircularRadius: 80.0,
                              btnChild: Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor),
                              ),
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
