import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'file:///B:/Courses/Flutter%20Course/mad_flutter_labs/lib/homepage.dart';
import 'package:mad_flutter_labs/routes/homeview.dart';
import 'package:mad_flutter_labs/widgets/calculations.dart';

class Routes {
  static const String contacts = ContactsPage.routeName;
  static const String events = EventsPage.routeName;
  static const String notes = NotesPage.routeName;
  static const String report = Report.routeName;
  static const String homeview = HomeView.routeName;
  static const String calcview = calculation.routeName;
}

class EventsPage extends StatelessWidget {
  static const String routeName = '/events';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("EVENTS"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text(
          "Events Page",
          style: TextStyle(fontSize: 35),
        )));
  }
}

class ContactsPage extends StatelessWidget {
  static const String routeName = '/contacts';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("CONTACTS"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text(
          "Contact Page",
          style: TextStyle(fontSize: 35),
        )));
  }
}

class NotesPage extends StatelessWidget {
  static const String routeName = '/notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NOTES"),
        ),
        drawer: AppDrawer(),
        body: Center(
          child: Text(
            "Notes Page",
            style: TextStyle(fontSize: 35),
          ),
        ));
  }
}

class Report extends StatelessWidget {
  static const String routeName = '/report';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REPORT"),
        ),
        drawer: AppDrawer(),
        body: Center(
          child: Text(
            "Report's Page",
            style: TextStyle(fontSize: 35),
          ),
        ));
  }
}
