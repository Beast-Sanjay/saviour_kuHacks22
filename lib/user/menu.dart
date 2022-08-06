import 'package:flutter/material.dart';
import 'package:saviour/user/ngolists.dart';
import 'package:saviour/widgets/home.dart';

// ignore: camel_case_types
class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  menuState createState() => menuState();
}

// ignore: camel_case_types
class menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('User Options'),
      ),
      body: Column(children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.playlist_add_check_circle,
                  size: 50,
                ),
                title: Text('Complaint status'),
                subtitle: Text('Check your complaint Status here.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'Check',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.drive_file_rename_outline_sharp,
                  size: 50,
                ),
                title: Text('Raise Complaint'),
                subtitle: Text('Here you can raise new compliant.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'Add',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.attach_money,
                  size: 50,
                ),
                title: Text('Donation'),
                subtitle: Text('Help NGO\'s by your Donations, Thank You.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'Donate',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListTileSelectExample()));
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
