import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hello_world/food_list.dart';
import 'globals.dart' as globals;


void main() => runApp(const FoodSpotWithoutMenu());
class FoodSpotWithoutMenu extends StatelessWidget {
  // This widget is the root
  // of your application.
  const FoodSpotWithoutMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
bool spotsFavorite = false;
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double progress = 0;
  int count = 0;

  String getImageAddress(){
    switch(type){
      case FoodSpotType.aefeup:
        return "assets/images/schedules/aefeup.png";
      case FoodSpotType.cantina:
        return "assets/images/schedules/canteen.png";
      case FoodSpotType.restauranteINEGI:
        return "assets/images/schedules/restaurante_inegi.png";
      case FoodSpotType.barMinas:
        return "assets/images/schedules/bar_minas.png";
      case FoodSpotType.barBiblio:
        return "assets/images/schedules/bar_biblioteca.png";
    }
  }

  Future _handleReactions() async {
    final balance = count;
    setState(() {
      const Text("oi");

      progress = (balance / 25);
      if (balance == -25) {
        progress -= 0.1;
        if (progress < 0) {
          progress = 0;
        }
      } else if (balance < -25) {
        progress = (balance/ 25);
        if (progress < 0) {
          progress = 0;
        }
      } else if (balance == 100) {
        const Text("Full!",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black));
      }
    });
  }

  Widget buildProgress() {
    if (progress >= 0.9) {
      //Text("Full!",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black));
      return LinearProgressIndicator(valueColor: const AlwaysStoppedAnimation(Color.fromARGB(255, 190, 83, 49)),value: progress,minHeight: 50,backgroundColor: Colors.grey);
    }
    else if(progress >=  0.6 && progress < 0.9){
      return LinearProgressIndicator(valueColor: const AlwaysStoppedAnimation(Color.fromARGB(255, 232, 191, 43)),value: progress,minHeight: 50,backgroundColor: Colors.grey);
    }else{
      /*return Text(
        '${(progress * 100).toStringAsFixed(1)}%',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
      );*/
      return LinearProgressIndicator(valueColor: const AlwaysStoppedAnimation(Colors.green),value: progress,minHeight: 50,backgroundColor: Colors.grey);
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
              if(ispressed) {
                Navigator.of(context).pop();
              } else {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FoodList()));
              }
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
            margin: const EdgeInsets.fromLTRB(320,10,0,0),
            child: MaterialButton(
              height: 2,
              onPressed: () {
                if(spotsFavorite) {
                  spotsFavorite = false;
                } else {
                  spotsFavorite = true;
                }
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
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: const Text(
              'Current Occupancy',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
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
                          valueColor: const AlwaysStoppedAnimation(Colors.green),
                          backgroundColor: Colors.grey,
                          value: progress,
                        ),
                        Center(child: buildProgress()),
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(
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
                    if(count < 25 && !globals.hasLiked){count++; globals.hasDisliked = false; globals.hasLiked = true;}
                  });
                  _handleReactions();
                },
                textColor: const Color.fromARGB(255, 139, 186, 118),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: const <Widget>[
                    //Text('$count_up'),
                    Icon(Icons.thumb_up_alt_outlined, size: 90),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    if(count > 0 && !globals.hasDisliked){count--; globals.hasDisliked = true; globals.hasLiked = false;}
                    else{} //does nothing if line is already at minimum
                  });
                  _handleReactions();
                },
                textColor: const Color.fromARGB(255, 190, 83, 49),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: const <Widget>[
                    //Text('$count_down'),
                    Icon(Icons.thumb_down_alt_outlined, size: 90),
                  ],
                ),
              ),
              const SizedBox(
                height:100,
              ),
            ],
          ),
          Image.asset('assets/images/aefeup.png', height:110,width:385,alignment: Alignment.center),
        ],
      ),
    );
  }
}
Widget getWidget(BuildContext context){
  return Container(
    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: SizedBox(
      height: 60,
      width: 100,
      child: ElevatedButton(
          child: const Text('x',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 176, 118, 105)),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FoodSpotWithoutMenu()),
            );
          }),
    ),
  );
}
