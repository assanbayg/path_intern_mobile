/*
  Need to fix SeachPage: to split search.dart into widgets and keep search function
*/

import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  final loggedIn = false;
  final ThemeData theme = ThemeData(
    primaryColor: Color.fromARGB(255, 26, 83, 92),
    fontFamily: 'Quicksand',
  );
  final secondaryColor = Color.fromARGB(255, 254, 197, 12);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Path',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: secondaryColor)),
      home: loggedIn ? HomePage() : LoginPage(),
    );
  }
}
