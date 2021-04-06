import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///B:/Courses/Flutter%20Course/mad_flutter_labs/lib/homepage.dart';

import 'package:mad_flutter_labs/widgets/calculations.dart';
import 'package:mad_flutter_labs/widgets/navigation.dart';
import 'package:mad_flutter_labs/widgets/drawer.dart';
import 'package:mad_flutter_labs/routes/Routes.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/homeview';
  String text_value;
  HomeView({this.text_value});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _check_key = GlobalKey<FormState>();
  var int_value1;
  var int_value2;
  var sum;
  final TextEditingController int1 = new TextEditingController();
  final TextEditingController int2 = new TextEditingController();
  void cal_sum() {
    setState(() {
      int_value1 = int.parse(int1.text);
      int_value2 = int.parse(int2.text);
      sum = int_value1 + int_value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    void _submit() {
      final isValid = _check_key.currentState.validate();
      if (!isValid) {
        return;
      }
      _check_key.currentState.save();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => calculation(
                  int_value1: int_value1,
                  int_value2: int_value2,
                  int1: int1,
                  int2: int2,
                  sum: sum)));
    }

    final integerfield1 = TextFormField(
      onChanged: (text) {
        int_value1 = text;
      },
      onFieldSubmitted: (value) {},
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Some Number';
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Number',
          hintText: 'First No Here',
          icon: const Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: const Icon(Icons.subdirectory_arrow_right_sharp))),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      controller: int1,
    );
    final integerfield2 = TextFormField(
      onChanged: (text) {
        int_value2 = text;
      },
      onFieldSubmitted: (value) {},
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Some Number';
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Number',
          hintText: 'Second No Here',
          icon: const Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: const Icon(Icons.subdirectory_arrow_right_sharp))),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      controller: int2,
    );
    final submitbutton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF063BF5),
        child: ElevatedButton(
          // minWidth: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            cal_sum();
            _submit();
          },
          child: Text("Submit", textAlign: TextAlign.center),
        ));
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.text_value),
        ),
        body: Center(
            child: Form(
          key: _check_key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[integerfield1, integerfield2, submitbutton],
          ),
        )));
  }
}
