import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';

class Lines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget> [
          IconButton(
            alignment: Alignment.topLeft,
            color: Colors.grey,
            icon: const Icon(Icons.account_circle, size:40),
            onPressed: () {},
          ),
        ],
      ),
      body: Center (
        child: Container(
          margin: EdgeInsets.fromLTRB(10,10,10,650),
          child: Text("Current Ocupation",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
      ),)
    );
  }
}
