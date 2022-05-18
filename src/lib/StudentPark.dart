

import 'package:flutter/material.dart';

class StudentPark extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
        IconButton(
        alignment: Alignment.topLeft,
        color: Colors.grey,
        icon: const Icon(Icons.account_circle, size:40),
    onPressed: () {},
    ),
    ],
    ),
        body:Center(
        child: Text("Available Spots",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold ),),
        ),
    floatingActionButton: Container( margin:EdgeInsets.fromLTRB(70,30,90,350),
      child: MaterialButton(
        height: 2,
    onPressed: () {},
        //color: const Color.fromARGB(255, 3, 3, 3),
          textColor: const Color.fromARGB(255, 139, 186, 118),
          child: const Icon(
            Icons.circle,
            size: 250,

          ),
    shape: const CircleBorder()),
    ),

    );
  }
}