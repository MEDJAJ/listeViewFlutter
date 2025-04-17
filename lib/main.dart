import 'package:flutter/material.dart';

import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyFirstScreen(),
    );
  }
}

class MyFirstScreen extends StatefulWidget {
  @override
  _MyFirstScreenState createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  String userInput = "";
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Flutter", style: TextStyle(color: Colors.red)),
          backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("entrer quelque choose:", style: TextStyle(fontSize: 20)),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "write here",
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userInput = controller.text;
                });
              },
              child: Text("visible le text"),
            ),
            SizedBox(height: 20),
            Text("le text a entrer est ", style: TextStyle(fontSize: 18)),
            Text(
              userInput,
              style: TextStyle(fontSize: 22, color: Colors.blue),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                });
              },
              child: Text("transmettre"),
            ),
          ],
        ),
      ),
    );
  }
}

