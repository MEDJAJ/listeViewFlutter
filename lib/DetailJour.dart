import 'package:flutter/material.dart';

class DetailJour extends StatelessWidget {
  const DetailJour({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail du jour'),
      ),
      body: Container(
        child: Text("Bonjour $title"),
      ),
    );  }}