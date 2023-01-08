import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_app/screens/home_screen.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'sql_helper.dart';

class StartGameScreen extends StatefulWidget {
  // final HangmanWords hangmanWords = HangmanWords();

  @override
  _StartGameScreenState createState() => _StartGameScreenState();
}

class _StartGameScreenState extends State<StartGameScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    List<Map<String, dynamic>> _journals = [];

    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      minimumSize: const Size(330, 50),
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
    );
    final data = SQLHelper.getItems();
    
    print(data);
    // widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 0.0, 250.0, 0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back!'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 330,
            height: 230,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
                left: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
                right: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
                bottom: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Color.fromARGB(255, 42, 177, 255),
            ),
            child: Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text(
                "$data",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            height: 60,
            margin: const EdgeInsets.fromLTRB(180.0, 0.0, 0.0, 0.0),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
                left: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
                right: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
                bottom: BorderSide(color: Color.fromARGB(255, 42, 177, 255)),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Color.fromARGB(255, 42, 177, 255),
            ),
            child: Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text(
                'Time: 30',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              child: Column(children: [
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('1'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('2'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('3'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('4'),
            ),
          ]))
        ],
      )),
    );
  }
}
