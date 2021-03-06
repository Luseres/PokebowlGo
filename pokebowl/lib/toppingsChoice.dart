import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';
import 'package:pokebowl/sauceChoice.dart';
import 'package:pokebowl/cartScreen.dart';
import 'package:pokebowl/halfCircle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToppingsChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new ToppingsScreen());
  }
}

class ToppingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              elevation: 0,
              heroTag: "btn12",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SauceChoice()),
                );
              },
              backgroundColor: Colors.transparent,
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
                size: 30,
              ),
            ),
            FloatingActionButton(
              heroTag: "btn13",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              backgroundColor: Colors.white,
              child: FaIcon(
                FontAwesomeIcons.arrowRight,
                color: Color(0xFFEB9A00),
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: CustomPaint(
        painter: HalfCircle(),
        child: Center(
          child: Column(children: [
            SizedBox(height: 24),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Image.asset('assets/images/Logo.png'),
              Column(children: [
                Text("PokeBowlGo", style: TextStyle(fontSize: 25)),
                RichText(
                  text: TextSpan(
                      text: 'Create ',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'your ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: 'own',
                            style:
                                TextStyle(fontSize: 25, color: Colors.black)),
                      ]),
                ),
              ]),
            ]),
            SizedBox(height: 23.5),
            Divider(
              color: Color(0xFF707070),
              height: 0,
              indent: 0,
              endIndent: 0,
              thickness: 2,
            ),
            SizedBox(height: 37.5),
            Text("Toppings",
                style: TextStyle(
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                  color: Colors.transparent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFEB9A00),
                  decorationThickness: 3,
                )),
            SizedBox(height: 72),
            Expanded(
              child: new CustomRadioToppings(),
            )
          ]),
        ),
      ),
    );
  }
}

class CustomRadioToppings extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioToppingsState();
  }
}

class CustomRadioToppingsState extends State<CustomRadioToppings> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    HomeScreen().getAPIChoices("toppings").then((results) => {
          results.forEach((result) {
            sampleData.add(new RadioModel(false, result['name'],
                result['price'].toString(), result['image']));
          }),
          setState(() {})
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomPaint(
        painter: HalfCircle(),
        child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sampleData.length,
          itemBuilder: (BuildContext context, int index) {
            return new InkWell(
              onTap: () {
                setState(() {
                  sampleData.forEach((element) => element.isSelected = false);
                  sampleData[index].isSelected = true;
                });
              },
              child: new RadioItem(sampleData[index]),
            );
          },
        ),
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 218.0,
            width: 225.0,
            child: new FittedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: new Image.network(_item.imageURL),
              ),
              fit: BoxFit.fill,
            ),
            decoration: new BoxDecoration(
              border: new Border.all(
                  width: _item.isSelected ? 3.0 : 1.0,
                  color: _item.isSelected ? Colors.white : Colors.black),
              borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            ),
          ),
          new SizedBox(height: 13),
          new Container(
            child: new Text(_item.text,
                style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
          new SizedBox(height: 13),
          new Container(
            child: new Text("€" + _item.price,
                style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String text;
  final String price;
  final String imageURL;

  RadioModel(this.isSelected, this.text, this.price, this.imageURL);
}
