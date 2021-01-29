import 'package:flutter/material.dart';
import 'main.dart';

class Complete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new CompleteScreen()
    );
  }
}

class CompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text("Thank you for the order",
                style: TextStyle(
                  shadows: [Shadow(color: Color(0xFFEB9A00), offset: Offset(0, -5))],
                  color: Colors.transparent,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFEB9A00),
                  decorationThickness: 3,
                )),
            SizedBox(height: 40),
            Image.asset('assets/images/Map.png'),
            SizedBox(height: 20),
            Text("Your delivery is on its way",
            style: TextStyle(color: Color(0xFFEB9A00), fontSize: 21, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Your delivery will arrive in about 15 minutes",
            style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            SizedBox(
              width: 212,
              height: 50,
              child: RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text("Back to home", style: TextStyle(color: Color(0xFFEB9A00), fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        )
      ),
    );
  }
}

