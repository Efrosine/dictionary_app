import 'package:dictionary_app/page1.dart';
import 'package:dictionary_app/page2.dart';
import 'package:dictionary_app/page3.dart';
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
  List _page = [Page1(), Page2(), Page3()];

  int currentIndex = 0;
  void goToPage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Dictionary',
          style: TextStyle(
            color: Colors.white,
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
      body: _page[currentIndex],
      bottomNavigationBar: GNav(
        gap: 10,
        onTabChange: (index) => goToPage(index),
        padding: EdgeInsets.all(16),
        backgroundColor: Colors.black,
        color: Colors.grey[500],
        activeColor: Colors.white,
        tabMargin: EdgeInsets.symmetric(vertical: 8),
        tabBackgroundColor: Colors.grey.shade800,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.menu_book,
            text: 'Tenses',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
