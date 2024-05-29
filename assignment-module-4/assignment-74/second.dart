import 'package:assignment_74/main.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(centerTitle: true,title: Text("my - app" , style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),),),
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image.asset("asset/secondscreen.png",height: 300,width: 350,),
            SizedBox(height: 10,width: 10,),
            Text("-----------------",style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),),

            SizedBox(height: 30,width: 30,),

            ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => myapp()));
            }, child: Text("go to first screen",style: TextStyle(color: Colors.blue,backgroundColor: Colors.orangeAccent),))

          ],
        ),
      ),
      );
  }
}
