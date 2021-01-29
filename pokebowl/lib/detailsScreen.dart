import 'package:flutter/material.dart';
import 'package:pokebowl/main.dart';


class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new DetailsScreen()
    );
  }
}

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  String valueChoose;
  List listItem = [
    "ING", "ABN Ambro", "ASN Bank", "Rabobank", "Bunq" , "SNS Bank"
  ];

  String valuekeys;
  List listkeys = [
    "15:30", "16:00", "16:30", "17:00", "17:30" , "18:30"
  ];
  
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding (
        padding: const EdgeInsets.fromLTRB(20.0, 50, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Uw naam",
                        labelText: "Naam",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                  ),
                ),SizedBox(width: 10,),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Uw Achternaam",
                        labelText: "Achternaam",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                  ),
                ),
              ]
            ),SizedBox(height: 10,),
            Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Uw Stad ",
                        labelText: "Stad",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                  ),
                ),SizedBox(width: 10,),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Uw Postcode",
                        labelText: "Postcode",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                  ),
                ),
              ]
            ),SizedBox(height: 10,),
            Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Uw Straat",
                        labelText: "Straat",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                  ),
                ),SizedBox(width: 10,),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Uw Huisnummer",
                        labelText: "Huisnummer",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                           
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange,
                            
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                  ),
                ),
              ]
            ),SizedBox(height: 20,),
            TextField(
                    decoration: InputDecoration(
                        hintText: "Uw Telefoonnummer",
                        labelText: "Telefoonnummer",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    maxLength: 10,
                  ),SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Uw E-mail",
                        labelText: "E-mail",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                    
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                    
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: checkBoxValue,
                         onChanged: (bool value) {
                           print(value);
                         }),
                          Text(
                    'Onthoud mijn gegevens', 
                    style: TextStyle(
                      fontSize: 12,
                      
                      color: Colors.black
                  ))
                    ]
                  ),
                  TextField(
                    decoration: InputDecoration(
                      
                        hintText: "Uw Opmerking",
                        labelText: "Opmerking",
                        hintStyle: TextStyle(fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                        ),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.orange
                        ),
                    isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                    maxLines: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.only(left:10, right:10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: DropdownButton(
                        hint: Text("IDEAL bank kiezen"),
                        isExpanded: true,
                        value: valueChoose,
                        onChanged: (newValue) {
                          setState(() {
                            valueChoose = newValue;
                          });
                        },
                        items: listItem.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                            
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.only(left:10, right:10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: DropdownButton(
                        hint: Text("Bezorgtijd kiezen"),
                        isExpanded: true,
                        value: valuekeys,
                        onChanged: (newValue) {
                          setState(() {
                            valuekeys = newValue;
                          });
                        },
                        items: listkeys.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                            
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
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
                    child: Text("Afrekenen", style: TextStyle(color: Color(0xFFEB9A00), fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                )
                
          ],
        ),
      ),
    );
  }
}