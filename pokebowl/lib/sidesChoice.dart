import 'package:flutter/material.dart';
import 'package:pokebowl/baseChoice.dart';
import 'package:pokebowl/scrollWidget.dart';

class SidesChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new SidesScreen()
    );
  }
}

class SidesScreen extends StatelessWidget {
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
              MaterialPageRoute(builder: (context) => BaseChoice()),
            );
          }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    ) ;
  }
}