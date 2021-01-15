import 'package:flutter/material.dart';
import 'package:pokebowl/baseChoice.dart';
import 'package:pokebowl/proteinChoice.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn4",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BaseChoice()),
                );
              },
              child: Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "btn5",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProteinChoice()),
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