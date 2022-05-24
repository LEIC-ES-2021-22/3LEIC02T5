import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
class MyApp extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
class Cantina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 150,
        actions: <Widget>[
          Center(
            child: MaterialButton(
                height: 25,
                onPressed: () {},
                color: const Color.fromARGB(255, 210, 187, 128),
                textColor: Colors.white,
                child: const Icon(
                  Icons.account_circle,
                  size: 65,
                ),
                padding: const EdgeInsets.all(9),
                shape: const CircleBorder()),
          ),
        ],
      ),
  body: Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Current Occupancy",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
               
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border:TableBorder.all(width: 2.0,color: Colors.red),
            children: [
              TableRow(
                children: [
                  Text("",textScaleFactor: 1.5,textAlign: TextAlign.center,),
                  Text("Sopa",textScaleFactor: 1.5,textAlign: TextAlign.center),
                ]
              ),
               TableRow(
                children: [
                  Text("",textScaleFactor: 1.5,textAlign: TextAlign.center),
                  Text("Carne",textScaleFactor: 1.5,textAlign: TextAlign.center),
                ]
              ),
              TableRow(
                children: [
                  Text("",textScaleFactor: 1.5,textAlign: TextAlign.center),
                  Text("Peixe",textScaleFactor: 1.5,textAlign: TextAlign.center),
                ]
              ),
              TableRow(
                children: [
                  Text("",textScaleFactor: 1.5,textAlign: TextAlign.center),
                  Text("Vegetariano",textScaleFactor: 1.5,textAlign: TextAlign.center),
                ]
              ),
              TableRow(
                  children: [
                    Text("",textScaleFactor: 1.5,textAlign: TextAlign.center),
                    Text("Dieta",textScaleFactor: 1.5,textAlign: TextAlign.center),
                  ]
              ),
            ],
        ),
          ),
        ]
      ),
    );
  
  }

  
}