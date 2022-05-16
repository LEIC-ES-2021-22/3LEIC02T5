import 'package:flutter/material.dart';

import 'menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(height:70),
            new Image.asset('assets/images/logotipo.png', height: 145,width: 100),
            SizedBox(height:35),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',
                  style: TextStyle(
                    color:Color.fromARGB(255, 140, 45, 25),
                  )),
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                  child: const Text('Login'),
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 140, 45, 25)),
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    _navigateToNextScreen(context);
                  }
              ),
            ),
            Row(
              children: <Widget>[
                const Text('Trouble Signing in?'),
                TextButton(
                  child: const Text(
                    'Email us',
                    style: TextStyle(fontSize: 15,
                    color: Color.fromARGB(255,140, 45, 25)),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Menu()));
  }
}