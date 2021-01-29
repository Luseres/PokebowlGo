import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new HistoryScreen()
    );
  }
}

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        heroTag: "btnHome",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.transparent,
      ),
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 38),
            Text("Most Recent Orders",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 32),
            Container(
              height: 101,
              color: Color(0xFFF0F0F0),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text("#13212:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Container(
                        width: 119,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFFEB9A00),
                          boxShadow: [
                            BoxShadow(
                            color: Color(0xFFFFC776).withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 6),
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: Colors.white,
                              size: 10,
                            ),
                            SizedBox(width: 5),
                            Text("Delivered",
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(width: 80),
                      Text("Date: 3-5-20",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF797979))),
                    ],
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Flexible(
                        child:Text("Brown rice, Avocado, Chicken, Cilantro, Mayo, Pineapple",
                          style: TextStyle(fontSize: 14, color: Color(0xFF797979))),
                      ),
                      SizedBox(width: 70),
                      Text("Price: €14,65",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(width: 18),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: 101,
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text("#11814:",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(width: 210),
                      Text("Date: 1-3-20",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF797979))),
                    ],
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Flexible(
                        child:Text("Mixed rice, Seaweed, Chicken, Cilantro, Chili, Pineapple",
                            style: TextStyle(fontSize: 14, color: Color(0xFF797979))),
                      ),
                      SizedBox(width: 70),
                      Text("Price: €12,65",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(width: 18),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 101,
              color: Color(0xFFF0F0F0),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text("#10670:",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(width: 210),
                      Text("Date: 9-2-20",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF797979))),
                    ],
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Flexible(
                        child:Text("Mixed rice, Avocado, Chicken, Cucumber, Sesame, Tamago",
                            style: TextStyle(fontSize: 14, color: Color(0xFF797979))),
                      ),
                      SizedBox(width: 70),
                      Text("Price: €16,85",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(width: 18),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

