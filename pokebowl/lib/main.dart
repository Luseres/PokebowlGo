import 'package:flutter/material.dart';
import 'package:pokebowl/gegevensScreen.dart';
import 'package:pokebowl/infoScreen.dart';
import 'package:pokebowl/baseChoice.dart';

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
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BaseChoice()),
                  );
                },
                child: Text('Make Bowl'),
              )
          ),
          floatingActionButton: FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GegevensScreen()),
                );
              }
          ),
        );
  }
}