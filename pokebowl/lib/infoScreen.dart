import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';

class Info extends StatelessWidget {
  // This widget is the root of your application.
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
        body: CustomPaint(
          painter: BluePainter(),
          child: Align( alignment: Alignment(0.00, -0.75),
            child: Column (
              children: [
                SizedBox(height: 85),
                Text(
                  'Informatie', 
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                )),Divider(
                  height: 0,
                  thickness: 2,
                  indent: 148,
                  endIndent: 150,
                  color: Colors.orange,
                ),SizedBox(height: 120),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10, 144, 0),
                  child: Text(
                    'Stap 1 : Kies je formaat van je pokebowl.', 
                    style: TextStyle(
                      fontSize: 12,
                      
                      color: Colors.black
                  )),
                ),Divider(
                  height: 12,
                  thickness: 2,
                  indent: 25,
                  endIndent: 215,
                  color: Colors.white,
                ),Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 40, 120, 0),
                  child: Text(
                    'Stap 2 : Selecteer 1 voor 1 de ingredienten die je in je pokebowl wilt hebben.', 
                    style: TextStyle(
                      fontSize: 12,
                      
                      color: Colors.black
                  )),
                ),Divider(
                  height: 12,
                  thickness: 2,
                  indent: 25,
                  endIndent: 230,
                  color: Colors.white,
                ),Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 40, 120, 0),
                  child: Text(
                    'Stap 2 : Selecteer 1 voor 1 de ingredienten die je in je pokebowl wilt hebben.', 
                    style: TextStyle(
                      fontSize: 12,
                      
                      color: Colors.black
                  )),
                ),Divider(
                  height: 12,
                  thickness: 2,
                  indent: 25,
                  endIndent: 250,
                  color: Colors.white,
                ),
                SizedBox(height: 45),
                SizedBox(
                  width: 175,
                  height: 45,
                  child: RaisedButton(onPressed: () {
                    print('test');
                  },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Text("Make Bowl   ➜", style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),  
          ),
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
