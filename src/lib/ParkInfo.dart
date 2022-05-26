import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';
import 'package:hello_world/ParkInfo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const parkingUrl = 'https://sigarra.up.pt/feup/pt/instalacs_geral.ocupacao_parques';
enum ReadMode {key,value,done}
class ParkInfo extends StatelessWidget{
  Future<Map<String,dynamic>> getParkData() async {
    var response = await http.get(Uri.parse(parkingUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var parkInfo = data["itdc"][0]["resposta"];
      return parkInfo;
    } else {
      throw Exception('Failed to read $parkingUrl');
    }
  }
  Map<String,String> snapshotToMap(AsyncSnapshot snapshot){
    String snapshotStr = snapshot.data.toString(), keyStr = "", valueStr ="", char;
    ReadMode mode = ReadMode.key;
    Map<String,String> myMap = {};
    for (int i = 0; i < snapshotStr.length; i++){ //ignora os 8 primeiros carateres porque não interessam
      char = snapshotStr[i];
      if (char == "(" || char == ")" || char == "\"" || char == "{" || char == "}" || char == "[" || char == "]" || char == " "){continue;} //ignora estes simbolos
      else if (char == ":"){mode = ReadMode.value;} //começa a registar values após o : e keys após ,
      else if (char == ","){
        mode = ReadMode.key;
        print("Read key $keyStr with value $valueStr");
        myMap[keyStr] = valueStr;
        valueStr = "";
        keyStr = "";
      }
      else{
        if(mode == ReadMode.key){keyStr += char;}  //ignora espaços
        else if (mode == ReadMode.value){valueStr += char;}
      }
      }
    return myMap;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Park Info'),
        ),
        body: FutureBuilder(
        future: getParkData(),
    builder: (_, snapshot){
    if (snapshot.connectionState == ConnectionState.waiting) {
    return CircularProgressIndicator();
    }
    if (snapshot.hasData) {
    //return Text(snapshot.data.toString());
    return Text(snapshotToMap(snapshot)["p1lotacao"].toString());
    }
    if (snapshot.hasError) {
    return Text('There is something wrong: ${snapshot.error}');
    }
    return Container();
    },
        ),
    );
  }
}