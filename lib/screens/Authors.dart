import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mob_a2/screens/Books.dart';

import '../class/books.dart';

class Authors extends StatefulWidget {
  const Authors({super.key});

  @override
  State<Authors> createState() => _AuthorsState();
}

class _AuthorsState extends State<Authors> {
  List<Map<String, dynamic>> author = Book.getAuthor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        title: Text("Author"),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: author.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(author[index]['name']),
            subtitle:
                Text('number of books ${author[index]['number of books']}'),
          );
        },
      )),
    );
  }
}
