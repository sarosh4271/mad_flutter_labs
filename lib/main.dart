import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/routes/Routes.dart';
import 'package:mad_flutter_labs/homepage.dart';
import 'package:mad_flutter_labs/routes/roughwork.dart';
import 'package:mad_flutter_labs/widgets/navigation.dart';
import 'package:mad_flutter_labs/widgets/resume.dart';
import 'package:mad_flutter_labs/routes/roughwork.dart';

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
        // '/': (context) => ControllerApp(),
        // '/':(context)=>HomePage(),
        // '/': (context) => nav_bar(),
        '/notes': (context) => NotesPage(),
        '/contacts': (context) => ContactsPage(),
        '/events': (context) => EventsPage(),
        '/report': (context) => Report()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Login'),
    );
  }
}
