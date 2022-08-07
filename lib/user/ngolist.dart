import 'package:flutter/material.dart';
import 'package:saviour/user/ngocatalog.dart';

class ngolist extends StatelessWidget {
  final Item item;
  const ngolist({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: Colors.purple.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(
              item.image,
              height: 90,
              width: 90,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(item.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            subtitle: Center(
                child: Text(item.desc,
                    style: TextStyle(
                        color: Colors.indigo.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))),
            // trailing: Text(

            //   style: TextStyle(
            //       color: Colors.purple,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20),
          ),
        ),
      ),
    );
  }
}
