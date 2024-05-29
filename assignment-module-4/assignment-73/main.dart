import 'dart:async';

import 'package:assignment_73/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main()
{
  runApp(MaterialApp(home: myapp(),));
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer
      (
        Duration(seconds: 4), () =>
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => second()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Lottie.asset("asset/lottie1.json", height: 200, width: 200),
            Text("-----------", style: TextStyle(
                color: Colors.black, backgroundColor: Colors.orangeAccent),)
          ],
        ),
      ),
    );
  }
}
