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

class _myappState extends State<myapp>
{
 Color backroundcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
       appBar: AppBar(centerTitle: true,title: Text("backround change app",style: TextStyle(backgroundColor: Colors.cyan),),),
        body: Container
          (

          color: backroundcolor,
            child: Center
              (
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [

                  SizedBox(height: 20,),
                  Image.asset("asset/cyan.jpg",height: 100,width: 100,),
                  ElevatedButton(onPressed: cyancolor, child: Text("cyan-color")),
                  SizedBox(height: 30,),
                  Image.asset("asset/red.png",height: 100,width: 100,),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: redcolor, child: Text("red-color")),
                  SizedBox(height: 20,),
                  Image.asset("asset/reverse.jpg",height: 120,width: 100,),
                  ElevatedButton(onPressed: whitecolor, child: Text("white-reverse")),
                  
                ],
            )
              ),
          ),
      );
  }

  void cyancolor()
  {
    setState(() {
      backroundcolor =Colors.cyan;
    });
  }

  void redcolor()
  {
    setState(() {
      backroundcolor = Colors.red;
    });
  }

  void whitecolor()
  {
    setState(() {
      backroundcolor = Colors.white;
    });
  }
}



