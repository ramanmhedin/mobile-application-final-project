import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mob_a2/class/books.dart';

class NewBooks extends StatefulWidget {
  NewBooks({super.key});

  @override
  State<NewBooks> createState() => _NewBooksState();
}

class _NewBooksState extends State<NewBooks> {
  var nbooks = Book.getNewBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nbooks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(nbooks[index]['name']),
          subtitle: Text('Written by ${nbooks[index]['author']}'),
          trailing: Text('${nbooks[index]['sales']} sales'),
        );
      },
    ));
  }
}
