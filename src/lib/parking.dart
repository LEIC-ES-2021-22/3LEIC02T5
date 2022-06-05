import 'package:hello_world/studentPark.dart';
import 'package:hello_world/teacherPark.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';
enum ChosenPark {student,teacher}
class Parking extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
              color: Colors.black
          ),
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
        body:
        GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            mainAxisExtent: 300,

          ),
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10,10,10,0),
              child : SizedBox(
                height: 60,
                width: 250,
              child:ElevatedButton(
                  child: const Text('Parque dos Alunos', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 182, 163, 148)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => StudentPark()),);}
              ),
            ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10,0,10,0),
              child : SizedBox(
                height: 60,
                width: 250,
              child:ElevatedButton(
                  child: const Text('Parque dos Professores', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB( 255, 160, 133, 107)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TeacherPark()),);}
              ),
            ),
           ),
          ],
        ),
      );
    }
  }