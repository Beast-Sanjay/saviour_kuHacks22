import 'package:flutter/material.dart';

import './widgets/welcome.dart';

void main() {
  runApp(const Saviour());
}

class Saviour extends StatefulWidget {
  const Saviour({Key? key}) : super(key: key);

  @override
  State<Saviour> createState() => _SaviourState();
}

class _SaviourState extends State<Saviour> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saviour',
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
