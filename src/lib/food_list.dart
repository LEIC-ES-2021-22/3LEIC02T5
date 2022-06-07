import 'package:flutter/material.dart';
import 'package:hello_world/food_spot_with_menu.dart';
import 'package:hello_world/food_spot_without_menu.dart';
import 'package:hello_world/menu.dart';
bool ispressed = false;
enum FoodSpotType {aefeup, barBiblio, cantina, restauranteINEGI, barMinas}
FoodSpotType type = FoodSpotType.aefeup;
class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black,
            onPressed: () {
              if(ispressed) {
                Navigator.of(context).pop();
              } else {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Menu()));
              }
            }
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container (
            //alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(0, 10, 208,10),
            /*child: SizedBox(
              width: 134,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 147, 77, 76)),),
                onPressed:() { Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Menu()
                ),);},
                child: const Text('Alimentação',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left),
              ),),*/),

          IconButton(
            alignment: Alignment.topLeft,
            color: Colors.grey,
            icon: const Icon(Icons.account_circle, size: 40),
            onPressed: () {},
          ),],


        /*const SizedBox(
        width: 95.0,
        height: 67.0,
        child: const DecoratedBox(
          decoration: const BoxDecoration(
              color: Colors.grey
          ),
        ),
      ),*/

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
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                    type = FoodSpotType.aefeup;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FoodSpotWithoutMenu()));
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              child: ElevatedButton(
                  child: const Text('Bar da Biblioteca',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 171, 105, 90)),
                  ),
                  onPressed: () {
                    type = FoodSpotType.barBiblio;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const FoodSpotWithoutMenu()));
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                  child: const Text('Cantina',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 176, 118, 105)),
                  ),
                  onPressed: () {
                    type = FoodSpotType.cantina;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FoodSpotWithMenu()));
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                    type = FoodSpotType.restauranteINEGI;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const FoodSpotWithoutMenu()));
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                  child: const Text('Bar de Minas',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 212, 186, 178)),
                  ),
                  onPressed: () {
                    type = FoodSpotType.barMinas;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const FoodSpotWithoutMenu()));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
