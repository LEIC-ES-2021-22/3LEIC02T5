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
          Container(
            margin: EdgeInsets.fromLTRB(10,20,300,0),
            child : SizedBox(
              height: 60,
              width: 220,
              child:ElevatedButton(
                  child: const Text('6', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 190, 191, 191)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10,20,300,0),
            child : SizedBox(
              height: 60,
              width: 250,
              child:ElevatedButton(
                  child: const Text('5', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB( 255, 158, 158, 159)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10,20,300,0),
            child : SizedBox(
              height: 60,
              width: 100,
              child:ElevatedButton(
                  child: const Text('4', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 140, 140, 141)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10,20,300,0),
            child: SizedBox(
              height: 60,
              width: 100,
              child:ElevatedButton(
                  child: const Text('3', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 99, 99, 99)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10,20,300,0),
            child: SizedBox(
              height: 60,
              width: 100,
              child:ElevatedButton(
                  child: const Text('2', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 50, 50, 50)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10,20,300,0),
            child: SizedBox(
              height: 60,
              width: 100,
              child:ElevatedButton(
                  child: const Text('1', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 2, 2, 2)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
        ],
      ),
    );
  }
}