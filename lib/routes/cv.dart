import 'package:flutter/material.dart';

class coverletter extends StatefulWidget {
  @override
  _coverletterState createState() => _coverletterState();
}

class _coverletterState extends State<coverletter> {
  bool value = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cover Letter'),
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
                      'Cover Letter:',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ), //name
                Card(
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Text(
                      'Date:',
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
                        'April 06 2021',
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
                      'Addressed To:',
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
                        'Hiring Manager,'
                        '\nXYZ',
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
                      'Body:',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: ListTile(
                      leading: Text(
                        'Dear Hiring Manager'
                        '\nI was excited to see you opening for a Customer'
                        '\nService Manager, and I hope to be invited for an interview',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ), //email

                // buildswitch(),
                Image.asset(value ? 'images/mypic.jpeg' : '', height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
