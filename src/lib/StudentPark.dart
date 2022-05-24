import 'package:flutter/material.dart';

class StudentPark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            alignment: Alignment.topLeft,
            color: Colors.grey,
            icon: const Icon(Icons.account_circle, size: 40),
            onPressed: () {},
          ),
        ],
      ),
      body : GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 0,
        mainAxisSpacing: 200,
        mainAxisExtent: 100,
    ),
        children: <Widget>[
      Container( margin:EdgeInsets.fromLTRB(0,0,0,0),
      child: MaterialButton(
          height: 2,
          onPressed: () {},
          textColor: const Color.fromARGB(255, 139, 186, 118),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Icon(Icons.circle, size: 250),
              Text("34",style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
            ],
            ),
      ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(50,0,0,50),
        child: Text("Available Spots",
        style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
      ),
    )],
      ),
    );
  }
}