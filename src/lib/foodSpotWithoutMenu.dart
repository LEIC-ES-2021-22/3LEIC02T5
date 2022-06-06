import 'dart:ui';
import 'dart:convert';

import 'package:hello_world/foodList.dart';
import 'package:hello_world/menu.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

const apiURL = "https://sigarra.up.pt/feup/pt/mob_eme_geral.cantinas";
class FoodSpotWithoutMenu extends StatelessWidget {
  Future<List<String>> getFoodData() async {
    var response = await http.get(Uri.parse(apiURL));
    if (response.statusCode == 200) {
      List<String> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to read $apiURL');
    }
  }

  int getFoodIndex(){
    if(type == FoodType.AEFEUP) return -1;
    else if (type == FoodType.cantina) return 3;
    else if (type == FoodType.restFEUP) return 1;
    else if (type == FoodType.restINEGI) return 2;
    else if (type == FoodType.grill) return 0;
    else return -2;
  }

  Map<String,dynamic> getSpecificMap(AsyncSnapshot snapshot){
    Map<String, dynamic> myMap = json.decode(snapshot.data[getFoodIndex()]);
    return myMap;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future: getFoodData(),
        builder: (_, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          else if (snapshot.hasData) {
            return Text(snapshot.data.toString());
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