import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ambulify_app/login.dart';

class WelcomeTwo extends StatelessWidget {
  const WelcomeTwo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
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
                                  // Navigate to the login page when 'Patient' is pressed
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Page()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(250, 50),
                                ),
                                child: const Text('Patient', style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigate to the driver page when 'Ambulance Driver' is pressed
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Page()));
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
                              SizedBox(height: 25,),
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

