import 'package:flutter/material.dart';
import 'package:myuat/views/splash.dart';

void main() => runApp(MyUAT());

class MyUAT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyUAT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}