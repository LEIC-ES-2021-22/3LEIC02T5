import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';
import 'package:hello_world/ParkInfo.dart';

class Parking extends StatelessWidget {
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
      body:
      GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          mainAxisExtent: 100,

        ),
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 250,
            child:ElevatedButton(
                child: const Text('Parque dos Alunos', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255,107, 0, 0)),
                ),
                onPressed: () {Navigator.of(context).push(
               MaterialPageRoute(builder : (context) => ParkInfo()),);}
            ),
          ),
          SizedBox.fromSize(
            size: Size(60,200),
            child:ElevatedButton(
                child: const Text('Parque dos Professores', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB( 255, 141, 40,19)),
                ),
                onPressed: () {}
            ),
          ),
        ],
      ),
    );
  }
}