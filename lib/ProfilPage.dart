import 'package:flutter/material.dart';

class Profilpage extends StatefulWidget {
  final  String nom;
  final String age;

  const Profilpage({required this.nom, required this.age, Key? key}) : super(key: key);
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<Profilpage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Profil'),backgroundColor: Colors.blue,),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 60, color: Colors.blue),
                SizedBox(height: 10),
                Text(
                  'Nom: ${widget.nom}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Âge: ${widget.age} ans',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }

}