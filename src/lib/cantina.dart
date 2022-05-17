import 'package:flutter/material.dart';

class Cantina extends StatelessWidget {
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
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          mainAxisExtent:60,

        ),
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton(
                child: const Text('Piso 1', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 107, 0, 0)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            size: Size(60, 200),
            child: ElevatedButton(
                child: const Text('Piso 2', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 141, 40, 19)),
                ),
                onPressed: () {}
            ),
          ),
          SizedBox(
            height: 60,
            width: 100,
            child: ElevatedButton(
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
            child: ElevatedButton(
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
            child: ElevatedButton(
                child: const Text('Piso 5', style: TextStyle(fontSize: 20),
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