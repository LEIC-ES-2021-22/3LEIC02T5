import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';

class Library extends StatelessWidget {
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
                child: const Text('Piso 1', style: TextStyle(fontSize: 20),
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
                child: const Text('Piso 2', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB( 255, 141, 40,19)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Piso 3', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 139, 38, 16)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Piso 4', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 191, 142, 127)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Piso 5', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 191, 142, 127)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Piso 6', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 191, 142, 127)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child:ElevatedButton(
                child: const Text('Piso 7', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 191, 142, 127)),
                ),
                onPressed: () {}
            ),
          ),
        ],
      ),
    );
  }
}