import 'package:flutter/material.dart';
import 'package:pokebowl/detailsScreen.dart';
import 'package:pokebowl/toppingsChoice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new CartScreen()
    );
  }
}

class CartScreen extends StatelessWidget {
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
            MaterialPageRoute(builder: (context) => ToppingsChoice()),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 48),
            Text("Total",
                style: TextStyle(
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                  color: Colors.transparent,
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFEB9A00),
                  decorationThickness: 3,
                )),
            SizedBox(height: 90),
            Text("PokeBowl - Create Your Own",
              style: TextStyle(
                fontSize: 15,
            )),
            SizedBox(height: 109),
            Divider(
              color: Color(0xFFEB9A00),
              thickness: 3,
              indent: 90,
              endIndent: 90,
            ),
            SizedBox(height: 15.5),
            Text("Subtotal                        € 12,75",
            style: TextStyle(
              fontSize: 15,
            )),
            SizedBox(height: 5),
            Text("Delivery                         €   1,90",
                style: TextStyle(
                  fontSize: 15,
                )),
            SizedBox(height: 5),
            Text("Total                              € 14,65",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 15.5),
            Divider(
              color: Color(0xFFEB9A00),
              thickness: 3,
              indent: 90,
              endIndent: 90,
            ),
            SizedBox(height: 132.5),
            SizedBox(
              width: 257,
              height: 69,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()),
                  );
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text("Pay  ➜",
                    style: TextStyle(
                        color: Color(0xFFEB9A00),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        )
      ),

    );
  }
}

