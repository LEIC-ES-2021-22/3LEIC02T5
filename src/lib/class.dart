import 'package:flutter/material.dart';
import 'class_list.dart';
import 'globals.dart';

class Class extends StatelessWidget {
  const Class({Key? key}) : super(key: key);

  String getSubjectName(){
    switch(type){
      case ClassType.da:
        return "DA";
      case ClassType.ltw:
        return "LTW";
      case ClassType.lcom:
        return "LCom";
      case ClassType.esof:
        return "ESof";
      case ClassType.so:
        return "SO";
    }
  }

  List<List<String>> getClasses(){
    switch(type){
      case ClassType.da:
        return classesDA;
      case ClassType.ltw:
        return classesLTW;
      case ClassType.lcom:
        return classesLCOM;
      case ClassType.esof:
        return classesES;
      case ClassType.so:
        return classesSO;
    }
  }

  List<Widget> drawClasses(){
    List<Widget> classes = [];
    for (var tClass in getClasses()){
      classes.add(drawClass(getSubjectName(), tClass[0], tClass[1], tClass[2], tClass[3]));
    }
    return classes;
  }

  Row drawClass(String className, String classDay, String classBegin, String classEnd, String classRoom){
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
          child : SizedBox(
            height: 45,
            width: 85,
            child:ElevatedButton(
                child: Text(getSubjectName(), style: const TextStyle(fontSize: 17),
                    textAlign: TextAlign.left),
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 171, 121, 105)),
                ),
                onPressed: () {}
            ),
          ),),
        Container(
          margin: const EdgeInsets.fromLTRB(4,4.5,0,0),
          child : SizedBox(
            height: 45,
            width: 200,
            child:ElevatedButton(
                child: Text(classDay+' | '+classBegin+' - '+classEnd, style: TextStyle(fontSize: 14,color: Colors.black),
                    textAlign: TextAlign.center),
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 227, 227, 227)),
                ),
                onPressed: () {}
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(4,4.5,0,0),
          child : SizedBox(
            height: 45,
            width: 80,
            child:ElevatedButton(
                child: Text(classRoom, style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.left),
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 99, 99, 99)),
                ),
                onPressed: () {}
            ),
          ),),
      ],
    );
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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: drawClasses()
      ),
    );
  }
}
