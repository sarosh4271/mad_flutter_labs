import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/routes/Routes.dart';

// void Main() => runApp(AppDrawer());

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () => Navigator.pushReplacementNamed(context, '/')),
          _createDrawerItem(
              icon: Icons.contacts,
              text: 'Contacts',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.contacts)),
          _createDrawerItem(
              icon: Icons.event,
              text: 'Events',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.events)),
          _createDrawerItem(
              icon: Icons.note,
              text: 'Notes',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.notes)),
          Divider(),
          _createDrawerItem(
              icon: Icons.bug_report,
              text: 'Report',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.report)),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          )
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.blue),
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage('logo.png'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'M Sarosh',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'msarosh.bscs17seecs',
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
      ),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
