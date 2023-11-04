import 'package:dictionary_app/page1.dart';
import 'package:dictionary_app/page2.dart';
import 'package:dictionary_app/page3.dart';
import 'package:dictionary_app/page4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Dictionary',
        style: TextStyle(
          color: Colors.green[100],
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        ),
        centerTitle: true,
         leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.green[100],
          onPressed: () {
            print('');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.green[100],
            onPressed: () {
              print('');
            },
          ),
        ],
      ),
      body: PageView(
        children: [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
      ]),
      
      bottomNavigationBar: GNav(
        gap: 10,
        padding: EdgeInsets.all(16),
        backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
        color: Colors.green[100],
        activeColor: Colors.green,
        tabBackgroundColor: Colors.white,
        tabs: const[
          GButton(icon: Icons.home,
          text: 'Home',
          ),
          GButton(icon: Icons.favorite_border,
          text: 'Likes',
          ),
          GButton(icon: Icons.search,
          text: 'Search',
          ),
          GButton(icon: Icons.settings,
          text: 'Settings',
          ),
        ],
      ),
    );
  }
}