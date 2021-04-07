import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      initialRoute: '/',
      routes: {
        '/': (context) => resume(),
        // '/': (context) => MyApp(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // home: MyHomePage(title: 'Flutter Login'),
    );
  }
}
