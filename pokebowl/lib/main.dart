import 'package:flutter/material.dart';
import 'package:pokebowl/gegevensScreen.dart';
import 'package:pokebowl/infoScreen.dart';
import 'package:pokebowl/baseChoice.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
          child: Column(
            children: [
              SizedBox(height: 84),
              Image.asset('assets/images/Logo.png'),
              SizedBox(height: 30),
              Text('PokeBowlGo', style: TextStyle(fontSize: 30)),
              RichText(
                text: TextSpan(
                  text: 'Create ', style: TextStyle(fontSize: 30, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'your ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: 'own', style: TextStyle(fontSize: 30, color: Colors.black)),
                  ]
                ),
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text("Make Bowl   ➜", style: TextStyle(color: Color(0xFFEB9A00), fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
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
                  MaterialPageRoute(builder: (context) => HomeScreen()),
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
                  MaterialPageRoute(builder: (context) => GegevensScreen()),
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
    );
  }
}
