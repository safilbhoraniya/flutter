import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color backgroundcolor = Colors.white;

  void background(){
    setState(() {
      backgroundcolor = Colors.greenAccent;
    });
  }

  void reverse(){
    setState(() {
      backgroundcolor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change BG "),backgroundColor: Colors.greenAccent,),
      body: Container(
        color: backgroundcolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              ElevatedButton(onPressed: background, child: Text('green colour')),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: reverse, child: Text("white colour"))
            ],
          ),
        ),
      ),
    );

  }
}


