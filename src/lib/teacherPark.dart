import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const parkingUrl = 'https://sigarra.up.pt/feup/pt/instalacs_geral.ocupacao_parques';
enum ReadMode {key,value,done}
class TeacherPark extends StatelessWidget {
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
            return GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 0,
                mainAxisSpacing: 200,
                mainAxisExtent: 100,
              ),
              children: <Widget>[
                Container( margin:EdgeInsets.fromLTRB(0,0,0,0),
                  child: MaterialButton(
                    height: 2,
                    onPressed: () {},
                    textColor: const Color.fromARGB(255, 139, 186, 118),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Icon(Icons.circle, size: 250),
                        Text(snapshotToMap(snapshot)["p3livres"].toString() + " / " + snapshotToMap(snapshot)["p3lotacao"].toString(),
                          style: TextStyle(fontSize: 37,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50,0,0,50),
                  child: Text("Available Spots",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                )],
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