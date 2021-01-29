import 'package:flutter/material.dart';


class Details extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new DetailsScreen()
    );
  }
  
}

class DetailsScreen extends StatefulWidget {
  String valueChoose;
  List listItem = [
    "1", "2"
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
                    
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green) )
                    ),
                    maxLines: 3,
                  ),
                  DropdownButton(
                    value: valueChoose,
                    onChanged: (newValue) {
                      setState(() {
                        valueChoose = newValue;
                      });
                    },
                    items: listItem.map((valueItem){
                      return DropdownButton(
                        value: valueItem,
                        child: Text(valueItem),
                        
                      );
                    }).toList(),
                  )
                
          ],
        ),
      ),
    );
  }
}