import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'dart:async';
import 'package:hello_world/food.dart';
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
bool cantinaFavorite = false;
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
        Text("Full!",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black));
      }
    });
  }

  Widget buildProgress() {
    if (progress >= 0.9) {
      //Text("Full!",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black));
      return LinearProgressIndicator(valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 190, 83, 49)),value: progress,minHeight: 50,backgroundColor: Colors.grey);
    }
    else if(progress >=  0.6 && progress < 0.9){
      return LinearProgressIndicator(valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 232, 191, 43)),value: progress,minHeight: 50,backgroundColor: Colors.grey);
    }else{
      /*return Text(
        '${(progress * 100).toStringAsFixed(1)}%',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
      );*/
      return LinearProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.green),value: progress,minHeight: 50,backgroundColor: Colors.grey);
    }
  }
  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black,
          onPressed: () {
            if(ispressed) Navigator.of(context).pop();
            else Navigator.of(context).push(MaterialPageRoute(builder: (context) => Food()));
          }
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: queryData.size.height * 0.0000,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(320,10,0,0),
            child: MaterialButton(
              height: 2,
              onPressed: () {
                if(cantinaFavorite) cantinaFavorite = false;
                else cantinaFavorite = true;
              },
            child: const Icon(
              Icons.star,
              size: 40,
              color : Color.fromARGB(255, 210, 187, 128),
            ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: const Text(
              'Current Occupancy',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 12,
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
            height: 15,
          ),
          Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'Do you agree?',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
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
                    Icon(Icons.thumb_up_alt_outlined, size: 90),
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
                textColor: const Color.fromARGB(255, 190, 83, 49),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    //Text('$count_down'),
                    Icon(Icons.thumb_down_alt_outlined, size: 90),
                  ],
                ),
              ),
              SizedBox(
                height:100,
              ),
            ],
          ),
      Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10,4,0,0),
            child : SizedBox(
              height: 45,
              width: 85,
              child:ElevatedButton(
                  child: const Text('Soup', style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 171, 121, 105)),
                  ),
                  onPressed: () {}
              ),
            ),),
          Container(
            margin: EdgeInsets.fromLTRB(4,4,0,0),
            child : SizedBox(
              height: 45,
              width: 270,
              child:ElevatedButton(
                  child: const Text('creme de legumes', style: TextStyle(fontSize: 12,color: Colors.black),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 227, 227, 227)),
                  ),
                  onPressed: () {}
              ),
            ),
          ),
        ],
      ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10,4.5,0,0),
                child : SizedBox(
                  height: 45,
                  width: 85,
                  child:ElevatedButton(
                      child: const Text('Meat', style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 171, 121, 105)),
                      ),
                      onPressed: () {}
                  ),
                ),),
              Container(
                margin: EdgeInsets.fromLTRB(4,4.5,0,0),
                child : SizedBox(
                  height: 45,
                  width: 270,
                  child:ElevatedButton(
                      child: const Text('Croquetes de batata com carne picada e arroz alegre', style: TextStyle(fontSize: 12,color: Colors.black),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 227, 227)),
                      ),
                      onPressed: () {}
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10,4.5,0,0),
                child : SizedBox(
                  height: 45,
                  width: 85,
                  child:ElevatedButton(
                      child: const Text('Fish', style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 171, 121, 105)),
                      ),
                      onPressed: () {}
                  ),
                ),),
              Container(
                margin: EdgeInsets.fromLTRB(4,4.5,0,0),
                child : SizedBox(
                  height: 45,
                  width: 270,
                  child:ElevatedButton(
                      child: const Text('Perca escalfada com salada de batata', style: TextStyle(fontSize: 12,color: Colors.black),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 227, 227)),
                      ),
                      onPressed: () {}
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10,4.5,0,0),
                child : SizedBox(
                  height: 45,
                  width: 85,
                  child:ElevatedButton(
                      child: const Text('Vegetarian', style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.left),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 171, 121, 105)),
                      ),
                      onPressed: () {}
                  ),
                ),),
              Container(
                margin: EdgeInsets.fromLTRB(4,4.5,0,0),
                child : SizedBox(
                  height: 45,
                  width: 270,
                  child:ElevatedButton(
                      child: const Text('Massa salteada vegetariana (soja, milho e brócolos)', style: TextStyle(fontSize: 12,color: Colors.black),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 227, 227)),
                      ),
                      onPressed: () {}
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10,4.5,0,4),
                child : SizedBox(
                  height: 45,
                  width: 85,
                  child:ElevatedButton(
                      child: const Text('Diet', style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 171, 121, 105)),
                      ),
                      onPressed: () {}
                  ),
                ),),
              Container(
                margin: EdgeInsets.fromLTRB(4,4.5,0,4),
                child : SizedBox(
                  height: 45,
                  width: 270,
                  child:ElevatedButton(
                      child: const Text('Peru grelhado com macarrão', style: TextStyle(fontSize: 12,color: Colors.black),
                          textAlign: TextAlign.center),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 227, 227)),
                      ),
                      onPressed: () {}
                  ),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/canteen.png', height:110,width:385,alignment: Alignment.center),
        ],
      ),
    );
  }
}
Widget getWidget(BuildContext context){
  return Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: SizedBox(
      height: 60,
      width: 100,
      child: ElevatedButton(
          child: const Text('Cantina',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 176, 118, 105)),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Cantina()),
            );
          }),
    ),
  );
}
