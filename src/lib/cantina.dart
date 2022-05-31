import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';

void main() => runApp(const Cantina());
const canteenURL = "https://sigarra.up.pt/feup/pt/mob_eme_geral.cantinas";
enum ReadMode {key,value,done}
class Cantina extends StatelessWidget {
  Future<Map<String,dynamic>> getCanteenData() async {
    var response = await http.get(Uri.parse(canteenURL));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var parkInfo = data["itdc"][0]["resposta"];
      return parkInfo;
    } else {
      throw Exception('Failed to read $canteenURL');
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
  // This widget is the root
  // of your application.
  const Cantina({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
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
      body: Column(
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
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            value: controller.value,
            semanticsLabel: 'Linear progress indicator',
          ),
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
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border: TableBorder.all(width: 2.0, color: Colors.red),
            children: const [
              TableRow(children: [
                Text(
                  "",
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                ),
                Text("Sopa", textScaleFactor: 1.5, textAlign: TextAlign.center),
              ]),
              TableRow(children: [
                Text("", textScaleFactor: 1.5, textAlign: TextAlign.center),
                Text("Carne",
                    textScaleFactor: 1.5, textAlign: TextAlign.center),
              ]),
              TableRow(children: [
                Text("", textScaleFactor: 1.5, textAlign: TextAlign.center),
                Text("Peixe",
                    textScaleFactor: 1.5, textAlign: TextAlign.center),
              ]),
              TableRow(children: [
                Text("", textScaleFactor: 1.5, textAlign: TextAlign.center),
                Text("Vegetariano",
                    textScaleFactor: 1.5, textAlign: TextAlign.center),
              ]),
              TableRow(children: [
                Text("", textScaleFactor: 1.5, textAlign: TextAlign.center),
                Text("Dieta",
                    textScaleFactor: 1.5, textAlign: TextAlign.center),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
