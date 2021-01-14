import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';
import 'package:pokebowl/sidesChoice.dart';
import 'package:pokebowl/scrollWidget.dart';

class BaseChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new BaseScreen()
    );
  }
}

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        ListView(
          padding: const EdgeInsets.fromLTRB(0, 220, 0, 220),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ScrollWidget(),
            ScrollWidget(),
            ScrollWidget(),
            ScrollWidget(),
            ScrollWidget(),
          ],
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidesChoice()),
            );
          }
      ),
    ) ;
  }
}