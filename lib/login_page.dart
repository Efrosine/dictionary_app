import 'package:dictionary_app/log_component/log_Textfield.dart';
import 'package:dictionary_app/log_component/log_button.dart';
import 'package:dictionary_app/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';
import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = AuthService();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void login() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final user = await _auth.login(email, password, context);
    if (user != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login is Successfully'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Cannot Login User'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: ListView(
          children: [
            SizedBox(height: 40),
            Image.asset('assets/images/logo.png', height: 100),
            const SizedBox(height: 40),
            Text(
              'Welcome to dictionary',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),
            //user name
            LogTextField(
              controller: _emailController,
              hintText: 'Username',
              secretText: false,
            ),

            const SizedBox(height: 10),
            //password
            LogTextField(
              controller: _passwordController,
              hintText: 'Passworld',
              secretText: true,
            ),
            const SizedBox(height: 15),
            Text(
              'Forgot Passworld ?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 25),
            LogButton(
              text: 'Sign In',
              onPressed: login,
            ),

            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.black,
                  ),
                ),
                Text('Or Continue With'),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: 90,
                  height: 90,
                ),
                SizedBox(width: 15),
                Image.asset(
                  'assets/images/fb.png',
                  width: 90,
                  height: 90,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?  '),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    'Register now',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
