import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new HistoryScreen()
    );
  }
}

class HistoryScreen extends StatelessWidget {
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
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 38),
            Text("Most Recent Orders",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 32),
            Container(
              height: 101,
              color: Color(0xFFF0F0F0),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Row(
                    children: [
                      Text("#13212:"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: 101,

            ),
            Container(
              height: 101,
              color: Color(0xFFF0F0F0),
            ),
          ],
        ),
      ),
    );
  }
}

