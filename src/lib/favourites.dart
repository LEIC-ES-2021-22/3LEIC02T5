import 'package:flutter/material.dart';
import 'package:hello_world/food_spot_with_menu.dart';
import 'package:hello_world/park.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackButton(
          color: Colors.black
        ),
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
            if( cantinaFavorite == true)
              getWidget(context),
            if (studentParkFavorite == true)
              getStudentPark(context),
            if(teacherParkFavorite == true )
              getTeacherPark(context)
        ],
    ),
    );
  }
}
  //function to add the page to the favourites page