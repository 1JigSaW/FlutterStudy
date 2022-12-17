import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Color.fromARGB(255, 217, 255, 3),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.blue,
              onSurface: Colors.red,
            ),
            onPressed: null,
            child: Text('BACKEND'),
          )),
    );
  }
}
