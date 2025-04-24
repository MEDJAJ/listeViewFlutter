import 'package:app_1/ConnexionPage.dart';
import 'package:app_1/ParameterePage.dart';
import 'package:app_1/Test.dart';
import 'package:app_1/Listeview.dart';
import 'package:flutter/material.dart';

import 'ListViewBuilderseparated.dart';
import 'ListeviewBuilder.dart';
import 'ProfilPage.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
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
  String userInput = ""; // هنا غادي نخزن اللي كيدخل المستخدم
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("أول تطبيق Flutter", style: TextStyle(color: Colors.red)),
          backgroundColor: Colors.green),
drawer:  _functionDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("دخل شي حاجة:", style: TextStyle(fontSize: 20)),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "كتب هنا",
                fillColor: Colors.green[100], // اللون ديال الخلفية
                filled: true, // خاصك تفعلها باش يتطبق اللون
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userInput = controller.text;
                });
              },
              child: Text("عرض النص")
            ),
            SizedBox(height: 20),
            Text("النص اللي دخلتي هو:", style: TextStyle(fontSize: 18)),
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
                    MaterialPageRoute(builder: (context) => Test()),
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

Widget _functionDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color:Colors.yellow,


          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                SizedBox(height: 10),
                Text("Application Flutter",style: TextStyle(fontSize: 20)),
                Text("mohammedeJajaa@gmail.com",style: TextStyle(fontSize: 12)),
              ],
            )
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Acceuil"),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AcceuillPage()),
            );
          },

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profil"),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profilpage(nom: "mohammede",age: "20",)),
            );
          },

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Parametre"),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Parameterepage()),
            );
          },


        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.connected_tv,color: Colors.red,),
          title: Text("Connection",style: TextStyle(color: Colors.red),),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Connexionpage()),
            );
          },

        ),
        Divider(),
       Center(
        child:  Text("TP ListeView",style: TextStyle(color: Colors.red,fontSize: 20,)),
       ),
        ListTile(
          leading: Icon(Icons.accessibility_new_rounded,color: Colors.green,),
          title: Text("ListeView",style: TextStyle(color: Colors.green),),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Listeview()),
            );
          },

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.accessibility_new_rounded,color: Colors.green,),
          title: Text("ListView.builder ",style: TextStyle(color: Colors.green),),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListeviewBuilder()),
            );
          },

        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.accessibility_new_rounded,color: Colors.green,),
          title: Text("ListView.separated",style: TextStyle(color: Colors.green),),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Listviewbuilderseparated()),
            );
          },

        ),
      ],
    ),
  );
}





