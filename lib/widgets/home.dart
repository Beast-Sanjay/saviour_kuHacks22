import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Saviour')),
        body: Cardes(),
      ),
    );
  }
}

class Cardes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Card(
          color: Colors.teal[300],
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              // width: double.infinity,
              width: MediaQuery.of(context).size.width * 0.31,
              height: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.account_circle_rounded), Text('User')]),
            ),
          ),
        ),
        Card(
          color: Colors.teal[300],
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              // width: double.infinity,
              width: MediaQuery.of(context).size.width * 0.31,
              height: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.account_balance_rounded), Text('NGO')]),
            ),
          ),
        ),
      ]),
    );
  }
}
