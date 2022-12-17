import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/screens/home_screen.dart';
// import 'package:flutter_hangman/utilities/constants.dart';
// import 'package:flutter_hangman/screens/score_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5.0),
          ),
          // ignore: prefer_const_constructors
          textStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
            letterSpacing: 1.0,
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 88, 238),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'ChivoMono'),
      ),
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => HomeScreen(),
        //'scorePage': (context) => ScoreScreen(),
      },
    );
  }
}
