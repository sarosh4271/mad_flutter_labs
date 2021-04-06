import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/routes/Routes.dart';
import 'package:mad_flutter_labs/widgets/drawer.dart';
import 'package:mad_flutter_labs/widgets/navigation.dart';
import 'package:mad_flutter_labs/routes/homeview.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool _obscureText = true;
  bool value = false;
  bool _passwordVisible = false;
  var _check_key = GlobalKey<FormState>();

  @override
  Widget buildCheckbox() => ListTile(
        leading: Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
        title: Text('Remember Me'),
      );

  Widget build(BuildContext context) {
    bool checkBoxValue = true;
    String text_value;

    void _submit() {
      final isValid = _check_key.currentState.validate();
      if (!isValid) {
        return;
      }
      _check_key.currentState.save();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeView(text_value: text_value)));
    }

    final emailField = TextFormField(
      // controller: text_passing,
      onFieldSubmitted: (value) {},
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Username';
        }
        return null;
      },
      onChanged: (text) {
        text_value = text;
      },
      decoration: const InputDecoration(
          labelText: 'Username',
          hintText: 'Enter Your Username',
          errorStyle: TextStyle(color: Colors.red),
          icon: const Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: const Icon(Icons.email))),
    );
    final passwordField = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Password';
        }
        return null;
      },
      keyboardType: TextInputType.text,
      obscureText: !_passwordVisible, //This will obscure text dynamically
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        icon: const Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: const Icon(Icons.lock)),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF063BF5),
      child: ElevatedButton(
        onPressed: () {
          _submit();
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // drawer: AppDrawer(),
      // bottomNavigationBar: _my_bottom_navigation(),
      // bottomNavigationBar: top_navigation(),
      appBar: AppBar(
        title: Text('Title Bar'),
      ),
      body: Center(
        child: Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: _check_key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  emailField,
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: buildCheckbox()),
                      Expanded(
                          child: Text(
                        'Forget Password',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.end,
                      ))
                    ],
                  ),
                  // SizedBox(
                  loginButon,
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
