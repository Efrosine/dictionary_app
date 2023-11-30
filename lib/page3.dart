import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        children: <Widget>[
          Container(
            height: 175,
            width: 175,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/fajar.jpg"),
            ),
          ),
          Container(
            child: SizedBox(height: 10),
          ),
          Container(
            child: Center(
              child: Text(
                "Develop",
                style: TextStyle(
                  fontFamily: "pop",
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Nama", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Fajar Triatmojo", style: TextStyle(
                    fontFamily: '', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("NIM", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("220605110152", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Rating", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            child: SizedBox(height: 30),
          ),
          Container(
            height: 175,
            width: 175,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/rama.jpeg"),
            ),
          ),
          Container(
            child: SizedBox(height: 10),
          ),
          Container(
            child: Center(
              child: Text(
                "Develop",
                style: TextStyle(
                  fontFamily: "pop",
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Nama", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Muhammad Ramadhani P", style: TextStyle(
                    fontFamily: 'pop', fontSize: 12)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("NIM", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("220605110147", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Rating", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            child: SizedBox(height: 30),
          ),
          Container(
            height: 175,
            width: 175,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/eco.jpg"),
            ),
          ),
          Container(
            child: SizedBox(height: 10),
          ),
          Container(
            child: Center(
              child: Text(
                "Develop",
                style: TextStyle(
                  fontFamily: "pop",
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Nama", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Ecofah ", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("NIM", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("220605110155", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("Rating", style: TextStyle(
                    fontFamily: 'pop', fontSize: 14)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}