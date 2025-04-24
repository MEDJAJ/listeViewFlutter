import 'package:flutter/material.dart';

class Parameterepage extends StatefulWidget {
  @override
  _ParametrePageState createState() => _ParametrePageState();
}

class _ParametrePageState extends State<Parameterepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Parametre'), backgroundColor: Colors.yellow),
      body: Padding(padding: EdgeInsets.all(20.0),
    child:Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 200,top: 100),
              child: Icon(Icons.settings, size: 300,color: Colors.red,),
            ),
    Container(
  margin: EdgeInsets.only(left: 200),  // Ajoute une marge de 16 pixels de tous les côtés
    child: Text("Parametre",style: TextStyle(color: Colors.black),),
  ),

        ],
      ),
      ),
    );
  }
}