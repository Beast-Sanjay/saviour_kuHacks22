import 'package:flutter/material.dart';

import './widgets/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const Saviour());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
