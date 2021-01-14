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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "btn3",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SidesChoice()),
                );
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    ) ;
  }
}