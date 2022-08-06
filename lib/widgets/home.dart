import 'package:flutter/material.dart';
import 'package:saviour/user/menu.dart';
import 'package:saviour/user/ngolists.dart';

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
        appBar: AppBar(
          title: Text('Saviour'),
          // foregroundColor: Colors.black,
          backgroundColor: Colors.black,
        ),
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
            splashColor: Color.fromARGB(255, 33, 243, 152).withAlpha(30),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => menu()));
            },
            child: SizedBox(
              // width: double.infinity,
              width: MediaQuery.of(context).size.width * 0.31,
              height: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      size: 70,
                    ),
                    Text(
                      'User',
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
            ),
          ),
        ),
        Card(
          color: Colors.teal[300],
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListTileSelectExample()));
            },
            child: SizedBox(
              // width: double.infinity,
              width: MediaQuery.of(context).size.width * 0.31,
              height: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_balance_rounded,
                      size: 70,
                    ),
                    Text(
                      'NGO',
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
