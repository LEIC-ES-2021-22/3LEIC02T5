import 'dart:ui';
import 'dart:convert';

import 'package:hello_world/foodList.dart';
import 'package:hello_world/menu.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

const canteenURL = "https://sigarra.up.pt/feup/pt/mob_eme_geral.cantinas";
class FoodSpotWithMenu extends StatelessWidget{
  int getIndex(){
    if(type == FoodType.AEFEUP) return -1;
    else if (type == FoodType.cantina) return 3;
    else if (type == FoodType.restFEUP) return 1;
    else if (type == FoodType.restINEGI) return 2;
    else if (type == FoodType.grill) return 0;
    else return -2;
  }

  List<String> snapshotToList(AsyncSnapshot snapshot){
    List<String> myMap = snapshot.data as List<String>;
    return myMap;
  }

  Map<String,dynamic> getMap(AsyncSnapshot snapshot){
    return snapshotToList(snapshot)[getIndex()] as Map<String,dynamic>;
  }

  String locateDish(Map<String,dynamic> data, String foodtypeValue){
    Map<String,dynamic> today_menu = {};
    bool menu_found = false;
    for(var menu in data["ementas"]){
      if (menu["data"] == getCurrentDate()){
        today_menu = menu["data"];
        menu_found = true;
      }
    }
    if (!menu_found) return "Informação Indisponível";
    for(var dish in today_menu["pratos"]){
      if (dish["tipo_descr"] == foodtypeValue){
        return dish["descricao"];
      }
    }
    return "Informação Indisponível";
  }

  Future<List<Map<String,dynamic>>> getCanteenData() async {
    var response = await http.get(Uri.parse(canteenURL));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var canteenInfo = data;
      return canteenInfo;
    } else {
      throw Exception('Failed to read $canteenURL');
    }
  }


  String getCurrentDate(){
    print("Getting Current Date...\n");
    String date;
    DateTime dateDT = DateTime.now();
    DateFormat formatter = DateFormat('dd-MM-yyyy');
    date = formatter.format(dateDT);
    print("Date Obtained.\n");
    return date;
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
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
      body: FutureBuilder(
        future: getCanteenData(),
        builder: (_, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (snapshot.hasData) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: queryData.size.height * 0.1,
                ),
                const Text(
                  'Current Occupancy',
                  style: TextStyle(fontSize: 20),
                ),
                /*LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  value: controller.value,
                  semanticsLabel: 'Linear progress indicator',
                ),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      textColor: const Color.fromARGB(255, 139, 186, 118),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Icon(Icons.sentiment_satisfied_alt_outlined, size: 50),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      textColor: const Color.fromARGB(255, 139, 186, 118),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Icon(Icons.sentiment_dissatisfied_outlined, size: 50),
                        ],
                      ),
                    ),
                  ],
                ),
                Table(
                  //textDirection: TextDirection.LTR,
                  defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                  border: TableBorder.all(width: 2.0, color: Colors.red),
                  children: [
                    TableRow(children: [
                      Text("Sopa", textScaleFactor: 1.5, textAlign: TextAlign.center),
                      Text(locateDish(getMap(snapshot), "Sopa"), textScaleFactor: 1.5, textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text("Carne", textScaleFactor: 1.5, textAlign: TextAlign.center),
                      Text(locateDish(getMap(snapshot), "Carne"), textScaleFactor: 1.5, textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text("Peixe", textScaleFactor: 1.5, textAlign: TextAlign.center),
                      Text(locateDish(getMap(snapshot), "Peixe"), textScaleFactor: 1.5, textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text("Vegetariano", textScaleFactor: 1.5, textAlign: TextAlign.center),
                      Text(locateDish(getMap(snapshot), "Sopa"), textScaleFactor: 1.5, textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text("Dieta", textScaleFactor: 1.5, textAlign: TextAlign.center),
                      Text(locateDish(getMap(snapshot), "Dieta"), textScaleFactor: 1.5, textAlign: TextAlign.center),
                    ]),
                  ],
                ),
              ],
            );
          }
          if (snapshot.hasError) {
            return Text('ERROR: ${snapshot.error}');
          }
          return Container();
        },
      ),
    );
  }
}