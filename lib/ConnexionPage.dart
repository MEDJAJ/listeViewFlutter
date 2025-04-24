import 'package:flutter/material.dart';

class Connexionpage extends StatefulWidget {
  @override
  _ConnexionPageState createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<Connexionpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Connexion'), backgroundColor: Colors.yellow),
      body: Padding(padding: EdgeInsets.all(20.0),
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 200,top: 100),
              child: Icon(Icons.connected_tv, size: 300,color: Colors.green,),
            ),
            Container(
              margin: EdgeInsets.only(left: 200),  // Ajoute une marge de 16 pixels de tous les côtés
              child: Text("Connexion",style: TextStyle(color: Colors.black),),
            ),

          ],
        ),
      ),
    );
  }
}