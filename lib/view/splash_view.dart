import 'dart:async';
// import 'package:ambulify_app/utils/global.colors.dart';
// import 'package:ambulify_app/view/login_view.dart';
// import 'package:ambulify_app/view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:ambulify_app/login.dart';
import 'package:ambulify_app/welcome.dart';
import 'package:lottie/lottie.dart';


class SplashView extends StatelessWidget {
  const SplashView({Key? key}); // Use 'Key' instead of 'super.key'

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(Welcome());
    });

    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Replace the Image with a Lottie animation
              Lottie.asset(
                'assets/animations/ambu1.json', // Replace with the actual path to your animation file
                height: 250, // Adjust the height as needed
                width: 250,  // Adjust the width as needed
              ),
              // Optional: Add spacing between the animation and text
              const Text(
                'Ambulify',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
