import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    var text = "Click Me";

    return Container(
      height: 218,
      width: 225,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      color: Colors.yellow,
      child: Text(text),
    );
  }
}