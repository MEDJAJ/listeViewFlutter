import 'package:flutter/material.dart';


class Listeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("ListeView"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget> [
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center (child: Text('LANGAGE JAVA')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('LANGAGE KOTLIN')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('LANGAGE DART')),
            ),
            Container(
              height: 50,
              color: Colors.amber[50],
              child: const Center(child: Text('LANGAGE SWIFT')),
            ),
          ],
        )
    );
}

 }