import 'package:flutter/material.dart';
import 'dart:async';
import 'globals.dart';
import 'package:hello_world/food_list.dart';

void main() => runApp(const FoodSpotWithMenu());

class FoodSpotWithMenu extends StatelessWidget {
  const FoodSpotWithMenu({Key? key}) : super(key: key);
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
bool cantinaFavorite = false;
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int count = countCantina;
  double progress = countCantina/25;

  Future _handleReactions() async {
    int balance = count;
    setState(() {

      progress = (balance/ 25);
      if (balance == -25) {
        progress -= 0.1;
        if (progress < 0) {
          progress = 0;
        }
      } else if (balance < -25) {
        progress = (balance / 25);
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
            if(ispressed) {Navigator.of(context).pop();}
            else {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FoodList()));}
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
                if(cantinaFavorite) {cantinaFavorite = false;}
                else {cantinaFavorite = true;}
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
                    if(countCantina < 25 && !hasLikedCantina){count++; countCantina++; hasDislikedCantina = false; hasLikedCantina = true;}
                  });
                  _handleReactions();
                },
                textColor: const Color.fromARGB(255, 139, 186, 118),
                key: const Key("Thumbs_up"),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: const <Widget>[
                    //Text('$count_up'),
                    Icon(Icons.thumb_up_alt_outlined, size: 90, ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    if(countCantina < 25 && !hasLikedCantina){count--; countCantina--; hasDislikedCantina = true; hasLikedCantina = false;}
                  });
                  _handleReactions();
                },
                textColor: const Color.fromARGB(255, 190, 83, 49),
                key: const Key("Thumbs_down"),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: const <Widget>[
                    Icon(Icons.thumb_down_alt_outlined, size: 90),
                  ],
                ),
              ),
              const SizedBox(
                height:100,
              ),
            ],
          ),
      Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(10,4,0,0),
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
            margin: const EdgeInsets.fromLTRB(4,4,0,0),
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
                margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
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
                margin: const EdgeInsets.fromLTRB(4,4.5,0,0),
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
                margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
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
                margin: const EdgeInsets.fromLTRB(4,4.5,0,0),
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
                margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
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
                margin: const EdgeInsets.fromLTRB(4,4.5,0,0),
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
                margin: const EdgeInsets.fromLTRB(10,4.5,0,4),
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
                margin: const EdgeInsets.fromLTRB(4,4.5,0,4),
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
    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
              MaterialPageRoute(builder: (context) => const FoodSpotWithMenu()),
            );
          }),
    ),
  );
}
