import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/Views/Login%20Page/login_page.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Stack to overlay the background image and the content
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/images/flower.png',
            fit: BoxFit.cover,
          ),

          // const Padding(
          //   padding: EdgeInsets.only(left: 50.0,right: 50.0),
          //   child: Center(
          //     child: SingleChildScrollView(
          //       scrollDirection: Axis.vertical,
          //       child: Text(
          //         "WedLove is a wedding ceremony checklist app, that helps you to create a checklist for your wedding in no time. It also provides platform for booking all your vendors for the wedding. WedLove is a one stop for all your wedding preparations."
          //       ),
          //     ),
          //   ),
          // ),
          // Content
          Positioned(
            bottom: 35.0,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() =>  LoginView());
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),
                  primary: const Color(0xff981375),
                ),
                child: const Text(
                  'Get Started',
                style: TextStyle(
                  color: Color(0xFFC7AE6A),
                  fontSize: 20,
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


