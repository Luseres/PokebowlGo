import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';
import 'package:pokebowl/baseChoice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokebowl/halfCircleHigh.dart';

class Info extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new InfoScreen()
    );
  }
}

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        heroTag: "btnHome",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.transparent,
      ),
        body: CustomPaint(
          painter: HalfCircleHigh(),
          child: Center(
            child: Column (
              children: [
                SizedBox(height: 83),
                Text("Information",  style: TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(0, -5)
                    )
                  ],
                  color: Colors.transparent,
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFEB9A00),
                  decorationThickness: 3,
                )
                ),
                SizedBox(height: 140),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Text('Stap 1: Choose what kind of rice you would like.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                    )
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Text(
                    'Stap 2: Select what ingredients you want.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Text(
                    'Stap 3: Fill in your details, and leave the rest to us!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    )
                  ),
                ),
                SizedBox(height: 45),
                SizedBox(
                  width: 257,
                  height: 69,
                  child: RaisedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BaseChoice()),
                    );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text("Make Bowl   ➜", style: TextStyle(color: Color(0xFFEB9A00), fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),  
          ),
        ),
    );
  }
}