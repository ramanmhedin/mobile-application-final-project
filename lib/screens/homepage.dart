import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mob_a2/screens/Authors.dart';
import 'package:mob_a2/screens/Books.dart';
import 'package:mob_a2/screens/Settings.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int currentPageIndex = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.menu_book_rounded),
            label: 'books',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Authors',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      body: <Widget>[
        Books(),

        Authors(),
        // Settings()
        Settings()
      ][currentPageIndex],
    );
  }
}
