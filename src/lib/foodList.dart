import 'package:flutter/material.dart';
import 'package:hello_world/foodSpotWithMenu.dart';
import 'package:hello_world/menu.dart';
enum FoodType {AEFEUP, cantina, restINEGI, restFEUP, grill}
FoodType type = FoodType.AEFEUP;
class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 60,
              width: 250,
              child: ElevatedButton(
                  child: const Text('AEFEUP',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 147, 77, 76)),
                  ),
                  onPressed: () {
                    type = FoodType.AEFEUP;
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              child: ElevatedButton(
                  child: const Text('Cantina',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 171, 105, 90)),
                  ),
                  onPressed: () {
                    type = FoodType.cantina;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodSpotWithMenu()),
                    );
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                  child: const Text('Restaurante FEUP',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 176, 118, 105)),
                  ),
                  onPressed: () {
                    type = FoodType.restFEUP;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodSpotWithMenu()),
                    );
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                  child: const Text('Restaurante do INEGI',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 197, 162, 150)),
                  ),
                  onPressed: () {
                    type = FoodType.restINEGI;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodSpotWithMenu()),
                    );
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                  child: const Text('Grill',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 212, 186, 178)),
                  ),
                  onPressed: () {
                    type = FoodType.grill;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodSpotWithMenu()),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
