
import 'package:flutter/material.dart';
import 'package:hello_world/cantina.dart';
import 'package:hello_world/studentPark.dart';
import 'package:hello_world/teacherPark.dart';

class Favourites extends StatelessWidget {
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
    body: GridView(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,
    crossAxisSpacing: 7,
    mainAxisSpacing: 7,
    mainAxisExtent: 100,
    ),
        children: <Widget>[
          if( isfavourite = true)
            getWidget(context),getStudentPark(context), getTeacherPark(context)],
          ),
    );
  }
}
  //function to add the page to the favourites page