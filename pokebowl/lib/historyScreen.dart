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
      body:Center(child: Text('History Screen')),
    );
  }
}

