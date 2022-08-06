import 'package:flutter/material.dart';
import 'package:saviour/widgets/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Another way to set the background color
        decoration: BoxDecoration(color: Color.fromARGB(221, 70, 225, 153)),
        child: Center(
          child: Container(
            child: Text(
              'Saviour',
              // Set text style as per theme
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 40),
            ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        // override the accent color of theme for this widget only
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: Color.fromARGB(255, 0, 0, 0)),
        ),
        child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            child: Icon(Icons.arrow_circle_right)),
      ),
    );
  }
}
