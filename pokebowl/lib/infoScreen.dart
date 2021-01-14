import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';

class Info extends StatelessWidget {
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
      body:Center(child: Text('InfoScreen')),

    );
  }
}