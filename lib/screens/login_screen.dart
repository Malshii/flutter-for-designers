import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kSidebarBackgroundColor,
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -75, 0),
                      child: Image.asset(
                        'asset/illustrations/illustration-14.png',
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -170, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Learn to design\nand code apps",
                                style: kLargeTitleStyle.copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                "Completed courses about the best\ntools and design systems",
                                style: kHeadlineLabelStyle.copyWith(color: Colors.white70),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
