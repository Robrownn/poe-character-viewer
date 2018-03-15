import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.dark(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        // primarySwatch: Colors.blue,
      ),
      home: ,
    );
  }
}

class AccountData {
  String name = '';
  Set<Character> characters = new Set<Character>();
}

class Character {
  String name = '';
  String ring = '';
  String ring2 = '';
  String weapon = '';
  String weapon2 = '';
  String bodyArmor = '';
  String amulet = '';
  String belt = '';
  String gloves = '';
  String offhand = '';
  String offhand2 = '';
  Set<String> flasks = new Set<String>();

}

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);
  @override
  createState() => new HomePageState();
}
  
class HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AccountData account = new AccountData();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  bool _autovalidate = false;
  bool _formWasEdited = false;

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      _autovalidate = true;
    } else {
      form.save();
    }
  }

  String _validateName(String value) {
    _formWasEdited = true;
    if (value.isEmpty) {
      return 'Name is required';
    }

    return null;

    Future<bool> _warnUserAboutInvalidData() async {
      final FormState form =_formKey.currentState;
      if (form == null || !_formWasEdited || form.validate())
        return true;

      return await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: const Text('This form has errors'),
            content: const Text('This form has invalid data, are you sure you want to leave?'),
            actions: <Widget>[
              new FlatButton(
                child: const Text('YES'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                }
              ),
            ],
          );
        },
      ) ?? false;
    }
  }

  Widget _buildAccountName() {
    return new TextFormField(
      
    );
  }
}

