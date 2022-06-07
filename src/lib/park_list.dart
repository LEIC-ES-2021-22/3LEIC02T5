import 'package:hello_world/park.dart';
import 'package:flutter/material.dart';
enum ParkType {student,teacher}
ParkType type = ParkType.student;
class ParkList extends StatelessWidget {
  const ParkList({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
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
              margin: const EdgeInsets.fromLTRB(10,10,10,0),
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
                    type = ParkType.student;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Park()),);}
              ),
            ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10,0,10,0),
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
                    type = ParkType.teacher;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Park()),);}
              ),
            ),
           ),
          ],
        ),
      );
    }
  }