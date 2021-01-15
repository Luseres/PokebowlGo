import 'package:flutter/material.dart';
import 'package:pokebowl/sidesChoice.dart';
import 'package:pokebowl/mixinsChoice.dart';
import 'package:pokebowl/scrollWidget.dart';

class ProteinChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new ProteinScreen()
    );
  }
}

class ProteinScreen extends StatelessWidget {
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
              heroTag: "btn6",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SidesChoice()),
                );
              },
              child: Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "btn7",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MixinsChoice()),
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