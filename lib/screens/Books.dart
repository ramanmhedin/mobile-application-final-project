import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'bookslist/allbooks.dart';
import 'bookslist/newbooks.dart';
import 'bookslist/popular.dart';

class Books extends StatelessWidget {
  Books({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(108, 99, 255, 1),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.people),
                text: "populer",
              ),
              Tab(
                icon: Icon(Icons.new_releases_outlined),
                text: "New",
              ),
              Tab(
                icon: Icon(Icons.format_align_left_rounded),
                text: "all",
              ),
            ],
          ),
          title: const Text('Books'),
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            popularbooks(),
            NewBooks(),
            allbooks(),
          ],
        ),
      ),
    );
  }
}
