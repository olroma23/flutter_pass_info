import 'package:flutter/material.dart';
import 'package:listalka/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  String text = "Some Text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 25),
            RaisedButton(
              child: Text("Second screen"),
              onPressed: () {
                _returnDataFromPreviousScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _returnDataFromPreviousScreen(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => SecondScreen());
    final result = await Navigator.push(context, route);

    setState(() {
      text = result;
    });
  }
}
