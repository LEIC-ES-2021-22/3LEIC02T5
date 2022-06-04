import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';
import 'package:hello_world/parkList.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const parkingUrl = 'https://sigarra.up.pt/feup/pt/instalacs_geral.ocupacao_parques';
class ParkingLot extends StatelessWidget {
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
  Map<String,dynamic> snapshotToMap(AsyncSnapshot snapshot){
    Map<String,dynamic> myMap = snapshot.data as Map<String,dynamic>;
    return myMap;
  }
  String getKey (){
    String answer = "NULL";
    if(park == ChosenPark.student){
      answer = "p3livres";
    }
    else if(park == ChosenPark.teacher){
      answer = "p1livres";
    }
    return answer;
  }
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
      body : FutureBuilder(
        future: getParkData(),
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
            //return Text(snapshot.data.toString());
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container( margin:EdgeInsets.fromLTRB(0,0,0,0),
                  child: MaterialButton(
                    onPressed: () {},
                    textColor: const Color.fromARGB(255, 139, 186, 118),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Icon(Icons.circle, size: 300),
                        Padding( padding: EdgeInsets.fromLTRB(0,0,0,0),child : Text(snapshotToMap(snapshot)[getKey()].toString() /* + " / " + snapshotToMap(snapshot)["p3lotacao"].toString()*/,
                          style: TextStyle(fontSize: 90,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)
                          ),
                        ),),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50,0,50,20),
                  child: Text("Available Spots",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset('assets/images/park.png', height: 300,width: 300),
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