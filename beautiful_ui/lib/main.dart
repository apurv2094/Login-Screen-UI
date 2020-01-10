import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  image: DecorationImage(
                    image: AssetImage('assets/images/image.jpg'),
                    fit: BoxFit.fill,
                  )),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Welcome\nto the\ncity",
                        style: prefix0.TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 70),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: 75,
                        width: 400,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                                colors: <Color>[Colors.purple, Colors.red])),
                        padding: const EdgeInsets.all(20.0),
                        child: const Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: prefix0.TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: 75,
                        width: 400,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                                colors: <Color>[Colors.purple, Colors.red])),
                        padding: const EdgeInsets.all(20.0),
                        child: const Text(
                          "Signup",
                          textAlign: TextAlign.center,
                          style: prefix0.TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
