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

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double progress = 0;
  int count_up = 0;
  int count_down = 0;

  Future _handleReactions() async {
    final balance = count_up - count_down;
    setState(() {
      Text("oi");

      progress = ((balance * 0.1) / 25);
      if (balance == -25) {
        progress -= 0.1;
        if (progress < 0) {
          progress = 0;
        }
      } else if (balance < -25) {
        progress = ((balance) * 0.1) / 25;
        if (progress < 0) {
          progress = 0;
        }
      } else if (balance == 100) {
        Text("Full!");
      }
    });
  }

  Widget buildProgress() {
    if (progress == 1.0) {
      return Text("Full!");
    } else {
      return Text(
        '${(progress * 100).toStringAsFixed(1)}%',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
      );
    }
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
          SizedBox(
            height: queryData.size.height * 0.0000,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: const Text(
              'Current Occupancy',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: queryData.size.height * 0.04,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: 300,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        LinearProgressIndicator(
                          minHeight: 40,
                          valueColor: AlwaysStoppedAnimation(Colors.green),
                          backgroundColor: Colors.grey,
                          value: progress,
                        ),
                        Center(child: buildProgress()),
                      ],
                    )),
              ],
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
          SizedBox(
            height: queryData.size.height * 0.001,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(() {
                    count_up++;
                  });
                  _handleReactions();
                },
                textColor: const Color.fromARGB(255, 139, 186, 118),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    //Text('$count_up'),
                    Icon(Icons.thumb_up_alt_outlined, size: 50),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    count_down++;
                  });
                  _handleReactions();
                },
                textColor: const Color.fromARGB(255, 139, 186, 118),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    //Text('$count_down'),
                    Icon(Icons.thumb_down_alt_outlined, size: 50),
                  ],
                ),
              ),
              SizedBox(
                height: queryData.size.height * 0.2,
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
