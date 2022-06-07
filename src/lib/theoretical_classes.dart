  import 'package:flutter/material.dart';

  class TheoreticalClasses extends StatelessWidget {
  const TheoreticalClasses({Key? key}) : super(key: key);

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
              icon: const Icon(Icons.account_circle, size:40),
              onPressed: () {},
            ),
          ],
        ),
        body:
        GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 100,

          ),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(10,0,10,0),
              child : SizedBox(
              height: 60,
              width: 250,
              child:ElevatedButton(
                  child: const Text('Desenho de Algoritmos', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 44, 44, 44)),
                  ),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DA()),);}
              ),
            ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(10,0,10,0),
        child : SizedBox(
          height: 60,
          width: 250,
          child:ElevatedButton(
                  child: const Text('Engenharia de Software', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB( 255, 76, 76, 76)),
                  ),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ES()),);}
              ),
            ),
      ),
            Container(
                margin: const EdgeInsets.fromLTRB(10,0,10,0),
                child : SizedBox(
              height: 60,
              width: 100,
              child:ElevatedButton(
                  child: const Text('Laboratório de Computadores', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 148, 148, 149)),
                  ),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LC()),);}
              ),
            ),
            ),
              Container(
                margin: const EdgeInsets.fromLTRB(10,0,10,0),
                child: SizedBox(
                  height: 60,
                  width: 100,
                  child:ElevatedButton(
                  child: const Text('Linguagens e Tecnologias Web', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 182, 183, 183)),
                  ),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LTW()),);}
              ),
      ),
              ),
              Container(
              margin: const EdgeInsets.fromLTRB(10,0,10,0),
              child: SizedBox(
              height: 60,
              width: 100,
              child:ElevatedButton(
                  child: const Text('Sistemas Operativos', style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 201, 202, 202)),
                  ),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SO()),);}
              ),
            ),
              ),
          ],
        ),
      );
    }
  }

  class SO extends StatelessWidget {
  const SO({Key? key}) : super(key: key);

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
            children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
                      child : SizedBox(
                        height: 45,
                        width: 85,
                        child:ElevatedButton(
                            child: const Text('SO', style: TextStyle(fontSize: 17),
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
                        width: 200,
                        child:ElevatedButton(
                            child: const Text('Monday | 10h30 - 12h30', style: TextStyle(fontSize: 14,color: Colors.black),
                                textAlign: TextAlign.center),
                            style: ButtonStyle(
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
                            child: const Text('B001', style: TextStyle(fontSize: 17),
                                textAlign: TextAlign.left),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 99, 99, 99)),
                            ),
                            onPressed: () {}
                        ),
                      ),),
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
                          child: const Text('SO', style: TextStyle(fontSize: 17),
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
                      width: 200,
                      child:ElevatedButton(
                          child: const Text('Tuesday | 16h00 - 18h00', style: TextStyle(fontSize: 14,color: Colors.black),
                              textAlign: TextAlign.center),
                          style: ButtonStyle(
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
                          child: const Text('B003', style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.left),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 99, 99, 99)),
                          ),
                          onPressed: () {}
                      ),
                    ),),
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
                          child: const Text('SO', style: TextStyle(fontSize: 17),
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
                      width: 200,
                      child:ElevatedButton(
                          child: const Text('Friday | 08h00 - 10h00', style: TextStyle(fontSize: 14,color: Colors.black),
                              textAlign: TextAlign.center),
                          style: ButtonStyle(
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
                          child: const Text('B112', style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.left),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 99, 99, 99)),
                          ),
                          onPressed: () {}
                      ),
                    ),),
                ],
              ),
           ],
        ),
      );
    }
  }

  class LTW extends StatelessWidget {
  const LTW({Key? key}) : super(key: key);

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
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
                  child : SizedBox(
                    height: 45,
                    width: 85,
                    child:ElevatedButton(
                        child: const Text('LTW', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Wednesday | 11h30 - 13h30', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B002', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('LTW', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Thursday | 15h00 - 17h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B025', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('LTW', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Friday | 10h00 - 12h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B002', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
              ],
            ),
          ],
        ),
      );
    }
  }

  class LC extends StatelessWidget {
  const LC({Key? key}) : super(key: key);

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
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
                  child : SizedBox(
                    height: 45,
                    width: 85,
                    child:ElevatedButton(
                        child: const Text('LC', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Monday | 12h30 - 14h30', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B005', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('LC', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Tuesday | 14h00 - 16h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B003', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('LC', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Thursday | 08h00 - 10h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B112', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
              ],
            ),
          ],
        ),
      );
    }
  }

  class DA extends StatelessWidget {
  const DA({Key? key}) : super(key: key);

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
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
                  child : SizedBox(
                    height: 45,
                    width: 85,
                    child:ElevatedButton(
                        child: const Text('DA', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Monday | 8h30 - 10h30', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B001', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('DA', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Wednesday | 10h00 - 12h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B007', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('DA', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Friday | 17h00 - 19h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B002', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
              ],
            ),
          ],
        ),
      );
    }
  }

  class ES extends StatelessWidget {
  const ES({Key? key}) : super(key: key);

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
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10,4.5,0,0),
                  child : SizedBox(
                    height: 45,
                    width: 85,
                    child:ElevatedButton(
                        child: const Text('ES', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Tuesday | 17h30 - 19h30', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B002', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('ES', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Thursday | 8h00 - 10h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B011', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
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
                        child: const Text('ES', style: TextStyle(fontSize: 17),
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
                    width: 200,
                    child:ElevatedButton(
                        child: const Text('Friday | 16h00 - 18h00', style: TextStyle(fontSize: 14,color: Colors.black),
                            textAlign: TextAlign.center),
                        style: ButtonStyle(
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
                        child: const Text('B103', style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.left),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 99, 99, 99)),
                        ),
                        onPressed: () {}
                    ),
                  ),),
              ],
            ),
          ],
        ),
      );
    }
  }