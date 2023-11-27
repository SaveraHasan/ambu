import 'package:flutter/material.dart';
import 'package:ambulify_app/user_signup.dart';
import 'package:ambulify_app/driver_signup.dart';
import 'package:lottie/lottie.dart';
// import 'package:ambulify_app/welcome_two.dart';

void main() {
  runApp(MaterialApp(
    home: SignupPageController(),
  ));
}

class SignupPageController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          width: 500,
                          height: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Lottie.asset(
                                'assets/animations/user2.json',
                                width: 180,
                                height: 180,
                                reverse: true,
                                repeat: true,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 20),
                              const Text(
                                'Are You?',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigate to the signup page when 'Patient' is pressed
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserSignupPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(250, 50),
                                ),
                                child: const Text('User', style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigate to the signup page when 'Ambulance Driver' is pressed
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DriverSignupPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(250, 50),
                                ),
                                child: const Text('Ambulance Driver', style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(height: 25),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}