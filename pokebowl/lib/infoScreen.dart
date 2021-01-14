import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';

class InfoScreen extends StatefulWidget {
  InfoScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InfoScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BluePainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    // Start paint from 20% height to the left
    ovalPath.moveTo(0, height * 0.25);

    // paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        width * 0.6, height * 0.29, width * 1, height * 0.75);

    // Paint a curve from current position to bottom left of screen at width * 0.1
    ovalPath.quadraticBezierTo(width * 1, height * 1, width * 1, height);

    // draw remaining line to bottom left side
    ovalPath.lineTo(0, height);

    // Close line to reset it back
    ovalPath.close();

    paint.color = Colors.orange;
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
