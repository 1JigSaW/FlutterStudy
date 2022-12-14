import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
import 'package:my_app/screens/backend_screen.dart';
import 'package:my_app/screens/frontend_screen.dart';
import 'package:my_app/screens/mobile_screen.dart';
import 'package:my_app/screens/general_screen.dart';

// import 'package:flutter_hangman/utilities/hangman_words.dart';
// import 'game_screen.dart';
// import 'loading_screen.dart';

class HomeScreen extends StatefulWidget {
  // final HangmanWords hangmanWords = HangmanWords();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      minimumSize: Size(200, 50),
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    );
    // widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              color: Color.fromARGB(141, 0, 0, 0),
              margin: const EdgeInsets.fromLTRB(242.0, 0.0, 0.0, 0.0),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: const Text(
                "50%",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              child: Text(
                "Programming",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0),
              ),
            ),
          ),
          Center(
            child: Container(
              //margin: EdgeInsets.fromLTRB(8.0, 45.0, 8.0, 8.0),
              child: Text(
                "Quiz",
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BackendScreen(),
                        ),
                      );
                    },
                    child: const Text('Backend'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FrontendScreen(),
                        ),
                      );
                    },
                    child: const Text('Frontend'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MobileScreen(),
                        ),
                      );
                    },
                    child: const Text('Mobile'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GeneralScreen(),
                        ),
                      );
                    },
                    child: const Text('General'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
