import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/routes/Routes.dart';
import 'package:mad_flutter_labs/routes/homeview.dart';

class calculation extends StatefulWidget {
  static const String routeName = '/calcview';
  var int_value1;
  var int_value2;
  var sum;
  TextEditingController int1 = TextEditingController();
  TextEditingController int2 = TextEditingController();
  calculation(
      {this.int_value1, this.int_value2, this.int1, this.int2, this.sum});

  @override
  _calculationState createState() => _calculationState();
}

class _calculationState extends State<calculation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculations Here',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.int_value1} + ${widget.int_value2} = ${widget.sum}',
                      style: TextStyle(color: Colors.blue, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
