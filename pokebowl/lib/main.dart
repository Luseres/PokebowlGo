import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokebowl/cartScreen.dart';
import 'package:pokebowl/infoScreen.dart';
import 'package:pokebowl/baseChoice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokebowl/halfCircle.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn0",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              backgroundColor: Colors.white,
              child: FaIcon(
                FontAwesomeIcons.history,
                color: Color(0xFFEB9A00),
                size: 30,
              ),
            ),
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoScreen()),
                );
              },
              backgroundColor: Colors.white,
              child: FaIcon(
                FontAwesomeIcons.info,
                color: Color(0xFFEB9A00),
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: CustomPaint(
        painter: HalfCircle(),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 84),
              Image.asset('assets/images/Logo.png'),
              SizedBox(height: 30),
              Text('PokeBowlGo', style: TextStyle(fontSize: 30)),
              RichText(
                text: TextSpan(
                    text: 'Create ',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'your ',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: 'own',
                          style: TextStyle(fontSize: 30, color: Colors.black)),
                    ]),
              ),
              SizedBox(height: 157),
              SizedBox(
                width: 257,
                height: 69,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BaseChoice()),
                    );
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text("Make Bowl   ➜",
                      style: TextStyle(
                          color: Color(0xFFEB9A00),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<List<dynamic>> getAPIChoices(String type) async {
    final response = await http.get("http://10.0.2.2:8000/ingredients.json");
    if (response.statusCode == 200) {
      Map<dynamic, dynamic> ingredients = jsonDecode(response.body);
      return ingredients['ingredients'][type];
    }
    return [];
  }
}
