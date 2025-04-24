import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _Test createState() => _Test();
}
class _Test extends State<Test>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        actions: <Widget>[
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
            ),
            onPressed: () {},
            child:  Text('Action 1'),
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
            ),
            onPressed: () {

            },
            child: const Text('Action 2'),
          ),
        ],
      ),

      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
          children: [
            Text("jajaa",style: TextStyle(fontSize: 20),),
      Text("jajaa"),
            Container(
              child: Card(
margin: EdgeInsets.all(20),
                elevation: 20,
                child: Text("Mohammede"),

              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("jajaa"),
                Text("jajaa"),
              ],
            )
        ],

      ),



      ),

      );
  }
}