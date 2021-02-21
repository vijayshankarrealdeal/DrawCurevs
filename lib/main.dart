import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:he/Curve2.dart';
import 'package:he/widgets.dart';

import 'Curve.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 3;
  String it = 'RD';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter < 0) {
      setState(() {
        _counter = 0;
      });
    } else {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'MY TESTS',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 122, 255, 1),
                      ),
                    ),
                  ),
                ),
                CurvedShape(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Available Tests',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 122, 255, 1),
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Positioned(
                    bottom: 0,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Transform.rotate(
                            angle: -pi, child: CurvedShape2()))),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              CupertinoIcons.back,
                              size: 45,
                              color: Color.fromRGBO(0, 122, 255, 1),
                            ),
                            onPressed: () {
                              // _decrementCounter();
                            }),
                        SizedBox(width: 10),
                        mainBord(context, _counter, it),
                        SizedBox(width: 10),
                        IconButton(
                            icon: Icon(
                              CupertinoIcons.forward,
                              size: 45,
                              color: Color.fromRGBO(0, 122, 255, 1),
                            ),
                            onPressed: () {
                              //_incrementCounter();
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    secondBord(context),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
