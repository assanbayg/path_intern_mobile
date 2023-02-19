/*
  Need to fix SeachPage: to split search.dart into widgets and keep search function
  Resume
  Filters

  Messenger
*/

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/authentication/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  final loggedIn = false;
  final ThemeData theme = ThemeData(
    primaryColor: const Color.fromARGB(255, 26, 83, 92),
    fontFamily: 'Quicksand',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        textStyle: const TextStyle(fontFamily: 'Quicksand'),
      ),
    ),
  );
  final secondaryColor = const Color.fromARGB(255, 254, 197, 12);

  App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Path',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: secondaryColor)),
      home: HomePage(),
    );
  }
}
