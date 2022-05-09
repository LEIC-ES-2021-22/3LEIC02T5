import 'package:flutter/material.dart';
import 'package:hello_world/food.dart';


class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget> [
          IconButton(
            alignment: Alignment.topLeft,
            color: Colors.grey,
            icon: const Icon(Icons.account_circle, size:50),
            onPressed: () {},
      ),
      ],
      ),
      floatingActionButton: Center(
        child: MaterialButton(
            height: 2,
            onPressed: () {},
            color: const Color.fromARGB(255, 210, 187, 128),
            textColor: Colors.white,
            child: const Icon(
              Icons.star,
              size: 65,
            ),
            padding: const EdgeInsets.all(30),
            shape: const CircleBorder()),
      ),
      body:
      GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 300,

          ),
          children: <Widget>[
            SizedBox(
              height: double.maxFinite/2,
              width: double.maxFinite/2,
                child:ElevatedButton(
                child: const Text('Food', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 175, 108, 94)),
                ),
                onPressed: () {}
            ),
            ),
            SizedBox(
              height: double.maxFinite/2,
              width: double.maxFinite/2,
                child:ElevatedButton(
                child: const Text('Parking Lot', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 218, 203, 190)),
                ),
                onPressed: () {}
            ),
            ),
            SizedBox(
              height: double.maxFinite/2,
              width: double.maxFinite/2,
                child:ElevatedButton(
                child: const Text('Classes', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 176, 176, 176)),
                ),
                onPressed: () {}
            ),
            ),
            SizedBox(
              height: 900,
              width: 250,
                child:ElevatedButton(
                child: const Text('Library', style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 209, 209, 209)),
                ),
                onPressed: () {}
            ),
            ),
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}
