import 'package:flutter/material.dart';
import 'package:untitled/Stu1.dart';
import './main1.dart';
import 'login.dart';
import 'classnames.dart';
import 'signup.dart';
import 'package:flutter/material.dart';
import 'att r fees.dart';

//void main() {
//runApp(MyApp());
//}
void main() => runApp(MyApp());

@override
class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Login.routeName:(context)=>Login(),
      },

    );
  }
}
