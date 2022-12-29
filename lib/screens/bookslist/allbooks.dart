import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../class/books.dart';

class allbooks extends StatefulWidget {
  const allbooks({super.key});

  @override
  State<allbooks> createState() => _allbooksState();
}

class _allbooksState extends State<allbooks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
  itemCount: Book.allBooks.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(Book.allBooks[index]['name']),
      subtitle: Text('Written by ${Book.allBooks[index]['author']}'),
      trailing: Text('${Book.allBooks[index]['sales']} sales'),
    );
  },
)

    );
  }
}