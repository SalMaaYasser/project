import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:untitled/register.dart';
import 'package:untitled/splash.dart';

import 'login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Splashscreen()
    );
  }
}
