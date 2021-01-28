import 'package:flutter/material.dart';
import 'package:pokebowl/baseChoice.dart';
import 'package:pokebowl/halfCircle.dart';
import 'package:pokebowl/proteinChoice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SidesChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new SidesScreen()
    );
  }
}

class SidesScreen extends StatelessWidget {
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
              heroTag: "btn4",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BaseChoice()),
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
              heroTag: "btn5",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProteinChoice()),
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
        child: Center (
          child: Column(
              children: [
                SizedBox(height: 24),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/Logo.png'),
                      Column(
                          children: [
                            Text("PokeBowlGo", style: TextStyle(fontSize: 25)),
                            RichText(
                              text: TextSpan(
                                  text: 'Create ', style: TextStyle(fontSize: 25, color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(text: 'your ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
                                    TextSpan(text: 'own', style: TextStyle(fontSize: 25, color: Colors.black)),
                                  ]
                              ),
                            ),
                          ]
                      ),
                    ]
                ),
                SizedBox(height: 23.5),
                Divider(
                  color: Color(0xFF707070),
                  height: 0,
                  indent: 0,
                  endIndent: 0,
                  thickness: 2,
                ),
                SizedBox(height: 37.5),
                Text("Sides",  style: TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(0, -5)
                    )
                  ],
                  color: Colors.transparent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFEB9A00),
                  decorationThickness: 3,
                )
                ),
                SizedBox(height: 72),
                Expanded(
                  child: new CustomRadioSides(),
                )
              ]
          ),
        ),
      ),
    ) ;
  }
}

class CustomRadioSides extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioSidesState();
  }
}

class CustomRadioSidesState extends State<CustomRadioSides> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'Seaweed', '5'));
    sampleData.add(new RadioModel(false, 'Avocado', '5'));
    sampleData.add(new RadioModel(false, 'Crab', '5'));
    sampleData.add(new RadioModel(false, 'Edamame', '5'));
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
            child: new Center(

            ),
            decoration: new BoxDecoration(
              border: new Border.all(
                  width: _item.isSelected
                      ? 3.0
                      : 1.0,
                  color: _item.isSelected
                      ? Colors.white
                      : Colors.black),
              borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            ),
          ),
          new SizedBox(height: 13),
          new Container(
            child: new Text(_item.text , style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
          new SizedBox(height: 13),
          new Container(
            child: new Text("€" + _item.price , style: TextStyle(fontSize: 25, color: Colors.white)),
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

  RadioModel(this.isSelected, this.text, this.price);
}