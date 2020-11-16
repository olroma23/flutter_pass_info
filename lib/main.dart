import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FirstScreen(),
      routes: {
        "/first": (context) => FirstScreen(),
        "/second": (context) => SecondScreen(),
      },
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("First Screen"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Second Screen"),
          onPressed: () {
            User user = User(age: 20, name: "Roman");
            Navigator.pushNamed(context, "/second", arguments: user);
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  User user;
  SecondScreen({this.user});
  @override
  Widget build(BuildContext context) {
    RouteSettings routeSettings = ModalRoute.of(context).settings;
    user = routeSettings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello, ${user.name}"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;

  User({this.age, this.name});
}
