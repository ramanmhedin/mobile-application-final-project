import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../class/books.dart';

class popularbooks extends StatelessWidget {
  popularbooks({super.key});
  var pbooks =
      Book.allBooks.where((element) => element["sales"] > 300000).toList();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: pbooks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(pbooks[index]['name']),
          subtitle: Text('Written by ${pbooks[index]['author']}'),
          trailing: Text('${pbooks[index]['sales']} sales'),
        );
      },
    ));
  }
}
