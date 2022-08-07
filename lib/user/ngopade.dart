import 'package:flutter/material.dart';
import 'package:saviour/user/ngolist.dart';

import 'ngocatalog.dart';

class ngopage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This Is ListView Builder Using Image And Text"),
        ),
        body: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ngolist(item: CatalogModel.items[index]);
            }),
      ),
    );
  }
}
