import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const Cantina());

class Cantina extends StatelessWidget {
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
  double _downloadPercentage = 0,value= 0;
  int count1 = 0, count2 = 0; //false
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {
          _handleReactions();
        });
      });
    controller.repeat();
  }

/*
  void determinateIndicator() {
    new Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        if (_downloadPercentage == 1) {
          timer.cancel();
        } else {
          _downloadPercentage = _downloadPercentage + 0.1;
        }
      });
    });
  }
*/
  void _handleReactions() {
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        while(_downloadPercentage < 1.0 && _downloadPercentage > 0.0){
          if (count1 - count2 > 25) {
            _downloadPercentage = ((count1 - count2) * 0.1) / 0.25;
          } else if (count1 - count2 <= 0) {
            _downloadPercentage = _downloadPercentage - 0.1;
        }
          _downloadPercentage = value;
      });
    });
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: const Text(
              'Current Occupancy',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 300,
              child: LinearProgressIndicator(
                minHeight: 40,
                backgroundColor: Colors.grey,
                value: _downloadPercentage,
              ),
            ),
          ),
          SizedBox(
            height: queryData.size.height * 0.1,
          ),
          Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'Do you agree?',
                style: TextStyle(fontSize: 20),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  while (count1 - count2 < 25 && count1 - count2 > 0) {
                    count1++;
                  }
                  _handleReactions();
                  setState(() {});
                },
                textColor: const Color.fromARGB(255, 139, 186, 118),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Icon(Icons.sentiment_satisfied_alt_outlined, size: 50),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  while (count1 - count2 < 25 && count1 - count2 > 0) {
                    count2++;
                  }
                  _handleReactions();
                  setState(() {});
                },
                textColor: const Color.fromARGB(255, 139, 186, 118),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Icon(Icons.sentiment_dissatisfied_outlined, size: 50),
                  ],
                ),
              ),
              SizedBox(
                height: queryData.size.height * 0.1,
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
