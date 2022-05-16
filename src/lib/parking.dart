import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';

class Parking extends StatelessWidget {
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
      body:
      GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          mainAxisExtent: 300,

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
                onPressed: () {}
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