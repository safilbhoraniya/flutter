import 'package:assignment_73/main.dart';
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
        body: Center
          (
            child: Column
              (
              mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Image.asset("asset/nature-1.jpg",height: 200,width: 200,),
                  Text("--------",style: TextStyle(color: Colors.black,backgroundColor: Colors.orangeAccent),),
                  SizedBox(height: 10,),
                  Text("welcome to second screen",style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => myapp()));
                      }, child: Text("exit",style: TextStyle(color: Colors.blue),))
                ],
              ),
          ),
      );
  }
}
