import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class personal extends StatefulWidget {
  @override
  _personalState createState() => _personalState();
}

class _personalState extends State<personal> {
  bool _value = false;
  void changevalue(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information'),
      ),
      body: Center(
        child: ListView(children: [
          Container(
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Card(
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Text(
                      'Name:',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ), //name
                Card(
                  color: Colors.grey.shade300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: ListTile(
                      leading: Text(
                        'Someone',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ), //name
                Card(
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Text(
                      'Address:',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ), //address
                Card(
                  color: Colors.grey.shade300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: ListTile(
                      leading: Text(
                        'City Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ), //address
                Card(
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Text(
                      'Email:',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ), //email
                Card(
                  color: Colors.grey.shade300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: ListTile(
                      leading: Text(
                        'xyz@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ), //email
                const SizedBox(
                  height: 12,
                ),
                new SwitchListTile(
                    activeColor: Colors.red,
                    activeTrackColor: Colors.yellow,
                    title: Text('Photo'),
                    value: _value,
                    onChanged: (bool value) {
                      changevalue(value);
                    }),
                Image.asset(_value ? 'images/mypic.jpeg' : '', height: 100),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
