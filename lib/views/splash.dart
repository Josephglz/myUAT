import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myuat/views/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Image.asset('assets/images/logo.png',
          width: 70,
        ),
      ),
    );
  }

  startTimer() {
    var _duration = const Duration(milliseconds: 2000);
    return Timer(_duration, navigate);
  }

  void navigate() {
    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: Duration(seconds: 2),
      pageBuilder: (_, __, ___) => homePage(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }
}