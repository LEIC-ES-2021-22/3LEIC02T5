import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';

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
