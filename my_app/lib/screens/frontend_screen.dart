import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/frontend_screen.dart';

class FrontendScreen extends StatefulWidget {
  // final HangmanWords hangmanWords = HangmanWords();

  @override
  _FrontendScreenState createState() => _FrontendScreenState();
}

class _FrontendScreenState extends State<FrontendScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      minimumSize: Size(200, 50),
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    );
    final ButtonStyle style_quest = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15),
      minimumSize: Size(350, 5),
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
    );
    // widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 250.0, 0.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
              child: Text(
                "Frontend",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
              width: 250.0,
              //height: 30.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('Junior'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('Middle'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('Senior'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
              child: ElevatedButton(
                style: style_quest,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Questions'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
