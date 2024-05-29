import 'package:assignment_74/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  Image.asset("asset/firstandsecondscreen.png",height: 300,width: 350,),
                  SizedBox(height: 10,width: 10,),
                  Text("-----------------",style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),),

                  SizedBox(height: 30,width: 30,),

                  ElevatedButton(onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => second()));
                      }, child: Text("go to next second screen",style: TextStyle(color: Colors.blue,backgroundColor: Colors.orangeAccent),))

                ],
              ),
          ),
      );
  }
}
