import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ambulify_app/welcome_two.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key});

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
                                'assets/animations/pin.json',
                                width: 150,
                                height: 150,
                                reverse: true,
                                repeat: true,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 20),
                              const Text(
                                'Are You In Karachi?',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeTwo()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(250, 50),
                                ),
                                child: const Text('Yes', style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {
                                  // Show a pop-up dialog when 'No' is pressed
                                  _showPopupDialog(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(250, 50),
                                ),
                                child: const Text('No', style: TextStyle(color: Colors.white)),
                              ),
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

  // Function to show a pop-up dialog
  void _showPopupDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Information'),
          content: Text('Our App is only Karachi based.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Welcome(),
  ));
}
