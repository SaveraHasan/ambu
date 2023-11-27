import 'package:flutter/material.dart';
import 'package:ambulify_app/login.dart';// Import the Login_Page class

class UserSignupPage extends StatefulWidget {
  @override
  _UserSignupPageState createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Key for the form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User Sign Up',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          prefixIcon: Icon(Icons.person, color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Name is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.mail_outline, color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          } else if (!isValidEmail(value)) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: 'Enter your phone number',
                          prefixIcon: Icon(Icons.phone, color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Phone number is required';
                          } else if (!isValidPhoneNumber(value)) {
                            return 'Enter a valid phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Create a password',
                          prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Valid form, you can process the signup here
                            // Access the values using nameController.text, emailController.text, phoneController.text, passwordController.text

                            // Navigate to the login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login_Page(),
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to validate email
  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }

  // Function to validate phone number
  bool isValidPhoneNumber(String phone) {
    final phoneRegExp = RegExp(r'^\d{10}$');
    return phoneRegExp.hasMatch(phone);
  }
}
