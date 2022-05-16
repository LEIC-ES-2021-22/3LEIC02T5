import 'package:flutter/material.dart';
import 'package:hello_world/food.dart';
import 'package:hello_world/parking.dart';
import 'package:hello_world/theoreticalClasses.dart';
import 'package:hello_world/library.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget> [
          IconButton(
            alignment: Alignment.topLeft,
            color: Colors.grey,
            icon: const Icon(Icons.account_circle, size:40),
            onPressed: () {},
      ),
      ],
      ),
      floatingActionButton: Container(
        margin:EdgeInsets.fromLTRB(0,0,0,MediaQuery.of(context).size.height/2.8),
        child: MaterialButton(
            height: 2,
            onPressed: () {},
            color: const Color.fromARGB(255, 210, 187, 128),
            textColor: Colors.white,
            child: const Icon(
              Icons.star,
              size: 40,
            ),
            padding: const EdgeInsets.all(30),
            shape: const CircleBorder()),
      ),
      body:
      GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 350,

          ),
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10,20,0,0),
            child : SizedBox(
              height: double.maxFinite/2,
              width: double.maxFinite/2,
                child:ElevatedButton(
                child: const Text('Alimentação', style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 175, 108, 94)),
                ),
                onPressed: () {Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Food()),
                );}
            ),
            ),
            ),
            Container(
            margin: EdgeInsets.fromLTRB(0,20,10,0),
            child: SizedBox(
              height: double.maxFinite/2,
              width: double.maxFinite/2,
                child:ElevatedButton(
                child: const Text('Estacionamento', style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 218, 203, 190)),
                ),
                onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Parking()),
                );}
            ),
            ),
            ),
            Container(
            margin: EdgeInsets.fromLTRB(10,0,0,0),
            child : SizedBox(
              height: double.maxFinite/2,
              width: double.maxFinite/2,
                child:ElevatedButton(
                child: const Text('Aulas Teóricas', style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 176, 176, 176)),
                ),
                onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TheoreticalClasses()),
                );}
            ),
            ),
            ),
            Container(
            margin: EdgeInsets.fromLTRB(0,0,10,0),
            child : SizedBox(
              height: 900,
              width: 250,
                child:ElevatedButton(
                child: const Text('Library', style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 209, 209, 209)),
                ),
                onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Library()),
                );
                }
                ),
            ),
            ),
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }

}
