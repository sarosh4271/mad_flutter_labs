import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/widgets/resume.dart';

class personal extends StatefulWidget {
  @override
  _personalState createState() => _personalState();
}

class _personalState extends State<personal> {
  bool value = true;

  Widget buildswitch() {
    Transform.scale(
        scale: 2,
        child: Container(
          child: Switch(
            activeTrackColor: Colors.blue,
            value: value,
            onChanged: (value) => setState(() => this.value = value),
          ),
        ));
  }

  Widget buildHeader({
    @required Widget child,
    @required String text,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          child,
        ],
      );
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    final photobutton = Switch(
      activeTrackColor: Colors.yellow,
      activeColor: Colors.orangeAccent,
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
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
                        'Muhammad Sarosh',
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
                        'Faisalabad',
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
                        'sarosh4271@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ), //email
                Card(
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Text(
                      'Photo:',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // buildHeader(child: buildswitch(), text: 'photo'),
                Image.asset(value ? 'images/mypic.jpeg' : '', height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
