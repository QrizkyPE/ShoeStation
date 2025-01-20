import 'package:flutter/material.dart';
import 'package:shoestation/components/my_button.dart';
import 'package:shoestation/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final reEnterPasswordController = TextEditingController();

  // Register method
  void registerUser(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // Logo
                Image.asset(
                  'images/ShoeStation.png',
                  height: 500,
                  width: 500,
                ),

                const SizedBox(height: 15),

                // Welcome text
                Text(
                  'Create your account!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // Username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // Password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // Re-enter password textfield
                MyTextField(
                  controller: reEnterPasswordController,
                  hintText: 'Re-enter Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                // Register button
                MyButton(
                  onTap: () => registerUser(context),
                  text: 'Register',
                ),

                const SizedBox(height: 50),

                // Already a member? Log in now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Log in now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
