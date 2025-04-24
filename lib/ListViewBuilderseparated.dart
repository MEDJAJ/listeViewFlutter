import 'package:flutter/material.dart';

import 'DetailJour.dart';

class Listviewbuilderseparated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaListView(),
    );
  }
}
class MaListView extends StatelessWidget {
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
      appBar: AppBar(
        title: Text("M208_TP6"),
      ),

      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(jours[index], style: TextStyle(fontSize: 30)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailJour(title: jours[index]),
                  ),
                );
              },
              subtitle: Text('taches à faire le  ' + jours[index]),
              leading: CircleAvatar(
                child: Text(
                  jours[index]
                  [0], // en prend le premier caractère de chaque jour
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                ),
              )
          );
          },
        separatorBuilder: (context, position) {
          return Container(
              color: Colors.orange,
              child: Icon(
                Icons.add_a_photo,
              )
          );
          },
        itemCount: jours.length,
      ),
    );
  }
}