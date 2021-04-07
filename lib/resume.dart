import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad_flutter_labs/cv.dart';
import 'package:mad_flutter_labs/personal.dart';

class resume extends StatefulWidget {
  @override
  _resumeState createState() => _resumeState();
}

class _resumeState extends State<resume> {
  bool get hasFocus => false;
  @override
  Widget build(BuildContext context) {
    final personal_info = TextField(
        // enabled: false,
        // focusNode: FocusNode(),
        // enableInteractiveSelection: true,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(labelText: 'Personal Information'),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => personal())));
    final cover_letter = TextField(
        decoration: InputDecoration(labelText: 'Cover Letter'),
        style: TextStyle(fontSize: 20),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => coverletter())));
    ;

    return new Scaffold(
        appBar: AppBar(
          title: Text("Resume Builder"),
        ),
        body: Center(
            child: ListView(
          children: <Widget>[personal_info, cover_letter],
        )));
  }
}
