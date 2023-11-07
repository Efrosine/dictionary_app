import 'package:dictionary_app/log_component/log_Textfield.dart';
import 'package:dictionary_app/log_component/log_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
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
              hintText: 'Username',
              secretText: false,
            ),

            const SizedBox(height: 10),
            //password
            LogTextField(
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
            logButton(),

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
                Text('Register now',
                style: TextStyle(
                  color: Colors.blueAccent
                ),)
              ],
            ),
          ],
        ),
      )),
    );
  }
}
