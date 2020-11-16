import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondScreen();
  }
}

class _SecondScreen extends State<SecondScreen> {
  TextEditingController textFieldController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: TextField(
            controller: textFieldController,
            decoration: InputDecoration(
              hintText: "Ente ur name",
              suffixIcon: IconButton(
                icon: Icon(Icons.arrow_right_alt),
                onPressed: () {
                  String name = textFieldController.text;
                  Navigator.pop(context, name);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
