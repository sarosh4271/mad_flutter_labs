import 'package:flutter/material.dart';

class coverletter extends StatefulWidget {
  @override
  _coverletterState createState() => _coverletterState();
}

class _coverletterState extends State<coverletter> {
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
        title: Text('Cover Letter'),
      ),
      body: Center(
        child: ListView(children: [
          Container(
            color: Colors.grey.shade300,
            child: Column(
              children: [
                new SwitchListTile(
                    title: Text(
                      'Cover Letter',
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade800),
                    ),
                    value: _value,
                    onChanged: (bool value) {
                      changevalue(value);
                    }),
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
                            'Dear Hiring Manager,'
                            '\n I was excited to see your opening'
                            '\n for a Customer Service Manager'
                            '\n and I hope to be invited for an'
                            '\n interview',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20,
                            ))),
                  ),
                ), //email
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
