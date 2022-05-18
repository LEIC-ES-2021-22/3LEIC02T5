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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Park Info'),
      ),
      body: new FutureBuilder(
        future: getParkData(),
        builder: (BuildContext context, AsyncSnapshot<Map<String,String>> snapshot){
          //How to get Map<String,String> from Future<Map<String,String>>
        },
      ),
    );
  }
}