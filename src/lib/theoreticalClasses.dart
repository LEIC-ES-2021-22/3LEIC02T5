import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';

class TheoreticalClasses extends StatelessWidget {
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
          mainAxisExtent: 100,

        ),
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 250,
            child:ElevatedButton(
                child: const Text('Desenho de Algoritmos', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 44, 44, 44)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox.fromSize(
            size: Size(60,200),
            child:ElevatedButton(
                child: const Text('Engenharia de Software', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB( 255, 76, 76, 76)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Laboratório de Computadores', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 148, 148, 149)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Linguagens e Tecnologias Web', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 182, 183, 183)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Sistemas Operativos', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 201, 202, 202)),
                ),
                onPressed: () {}
            ),
          ),
        ],
      ),
    );
  }
}