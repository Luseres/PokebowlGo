import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';
import 'package:pokebowl/scrollWidget.dart';

class FirstChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        )
    ) ;
  }
}