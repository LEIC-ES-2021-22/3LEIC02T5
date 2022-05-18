import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';
import 'package:hello_world/ParkInfo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const parkingUrl = 'https://sigarra.up.pt/feup/pt/instalacs_geral.ocupacao_parques';
class ParkInfo extends StatelessWidget{
  Future<Map<String,String>> getParkData() async {
    var response = await http.get(Uri.parse(parkingUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var parkInfo = data["itdc"][0]["resposta"];
      return parkInfo;
    } else {
      throw Exception('Failed to read $parkingUrl');
    }
  }
  String mapToStr(Map<String,String> map){
    String ans = "";
    map.forEach((key, value) {ans += "$key : $value /n";});
    return ans;
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: FutureBuilder(
        future: getParkData(),
        builder: (context, AsyncSnapshot<Map<String,String>> snapshot) {
          switch( snapshot.connectionState){
            case ConnectionState.none:
              return Text("There is no connection");
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center( child: new CircularProgressIndicator());
            case ConnectionState.done:
              if (snapshot.data != null){
                Map<String,String> myMap = snapshot.data as Map<String,String>; // transform your snapshot data in map
                var keysList = myMap.keys.toList(); // getting all keys of your map into a list

                return ListView.builder(
                    itemExtent: 90,
                    itemCount: myMap.length, // getting map length you can use keyList.length too
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          title: Text(myMap[index] as String),
                      );
                    }
                );
              }
              // here your snapshot data is null so SharedPreferences has no data...
              return Text("No data was loaded from SharedPreferences");
          }//end switch
        },
      ),
    );

  }
}