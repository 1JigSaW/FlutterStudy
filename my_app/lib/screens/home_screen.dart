import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_app/components/backend.dart';

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
    // widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(8.0, 45.0, 8.0, 8.0),
              child: Text(
                "ProgrammingQuiz",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0),
              ),
            ),
          ),
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    width: 155,
                    height: 64,
                    child: ActionButton(),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Container(
//                    width: 155,
                    height: 64,
                    // child: ActionButton(
                    //   buttonTitle: 'High Scores',
                    //   onPress: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => LoadingScreen(),
                    //       ),
                    //     );
                    //   },
                    // ),
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
