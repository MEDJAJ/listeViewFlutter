import 'package:flutter/material.dart';

class ListeviewBuilder extends StatelessWidget {
  var jours = [
    "Dimanche",
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("M208_TP6"),),
      body: ListView.builder(
        itemBuilder: (context, index) {//ترجع Widget لكل index

          return ListTile(
              title: Text(jours[index], style: TextStyle(fontSize: 30)),
              subtitle: Text('taches à faire le  ' + jours[index]),
              onTap: () {
                debugPrint("COCO ${jours[index]}");
              },
              leading: CircleAvatar(
                child: Text(
                  jours[index]
                  [0], // en prend le premier caractére de chaque jour
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                ),
              ));
        },
        itemCount: jours.length,
      ),
    );
    }
  }