import 'package:flutter/material.dart';
import 'Menu.dart';
class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            alignment: Alignment.topLeft,
            color: Colors.grey,
            icon: const Icon(Icons.account_circle, size: 50),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}