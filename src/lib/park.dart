import 'package:flutter/material.dart';
import 'package:hello_world/park_list.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:icon_decoration/icon_decoration.dart';
bool teacherParkFavorite = false;
bool studentParkFavorite = false;
const parkingUrl = 'https://sigarra.up.pt/feup/pt/instalacs_geral.ocupacao_parques';
enum ReadMode {key,value,done}
class Park extends StatelessWidget {
  const Park({Key? key}) : super(key: key);

  String getKey(){
    switch(type){
      case (ParkType.student):
        return "p3livres";
      case (ParkType.teacher):
        return "p1livres";
      default:
        return "NULL";
    }
  }

  Future<Map<String, dynamic>> getParkData() async {
    var response = await http.get(Uri.parse(parkingUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var parkInfo = data["itdc"][0]["resposta"];
      return parkInfo;
    } else {
      throw Exception('Failed to read $parkingUrl');
    }
  }

  Map<String, String> snapshotToMap(AsyncSnapshot snapshot) {
    String snapshotStr = snapshot.data.toString(),
        keyStr = "",
        valueStr = "",
        char;
    ReadMode mode = ReadMode.key;
    Map<String, String> myMap = {};
    for (int i = 0; i < snapshotStr
        .length; i++) { //ignora os 8 primeiros carateres porque não interessam
      char = snapshotStr[i];
      if (char == "(" || char == ")" || char == "\"" || char == "{" ||
          char == "}" || char == "[" || char == "]" || char == " ") {
        continue;
      } //ignora estes simbolos
      else if (char == ":") {
        mode = ReadMode.value;
      } //começa a registar values após o : e keys após ,
      else if (char == ",") {
        mode = ReadMode.key;
        myMap[keyStr] = valueStr;
        valueStr = "";
        keyStr = "";
      }
      else {
        if (mode == ReadMode.key) {
          keyStr += char;
        } //ignora espaços
        else if (mode == ReadMode.value) {
          valueStr += char;
        }
      }
    }
    return myMap;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
            color: Colors.black
        ),
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
        future: getParkData(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1.3,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (snapshot.hasData) {
            //return Text(snapshot.data.toString());
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[Container(
                margin: const EdgeInsets.fromLTRB(310, 6, 0, 0),
                child: MaterialButton(
                  height: 2,
                  onPressed: () {
                    switch(type){
                      case ParkType.student:
                        if(studentParkFavorite) {
                          studentParkFavorite = false;
                        } else {
                          studentParkFavorite = true;
                        }
                        break;
                      case ParkType.teacher:
                        if(teacherParkFavorite) {
                          teacherParkFavorite = false;
                        } else {
                          teacherParkFavorite = true;
                        }
                        break;
                    }
                  },
                  child: const Icon(
                    Icons.star,
                    size: 50,
                    color: Color.fromARGB(255, 210, 187, 128),
                  ),
                ),
              ),
                Container(margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: MaterialButton(
                    height: 2,
                    onPressed: () {},
                    textColor: const Color.fromARGB(255, 139, 186, 118),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        const DecoratedIcon(
                          icon: Icon(Icons.circle,size: 270),
                          decoration: IconDecoration(border: IconBorder()),
                        ),
                        Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(snapshotToMap(snapshot)[getKey()]
                              .toString(), /* + " / " + snapshotToMap(snapshot)["p1lotacao"].toString(),*/
                            style: const TextStyle(fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 50, 20),
                  child: const Text("Available Spots",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset('assets/images/park.png', height: 300, width: 300),
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
  Widget getTeacherPark(BuildContext context){
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: SizedBox(
        height: 60,
        width: 100,
        child: ElevatedButton(
            child: const Text('Parque dos Professores',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB( 255, 160, 133, 107)),
            ),
            onPressed: () {
              type = ParkType.teacher;
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Park()),
              );
            }),
      ),
    );
  }

Widget getStudentPark(BuildContext context){
  return Container(
    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: SizedBox(
      height: 60,
      width: 100,
      child: ElevatedButton(
          child: const Text('Parque dos alunos',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 182, 163, 148)),
          ),
          onPressed: () {
            type = ParkType.student;
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Park()),
            );
          }),
    ),
  );
}
