import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("alert dialog exit app",style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),),),
        backgroundColor: Colors.cyanAccent,
        body: Center
          (
            child: Column
              (
                children:
                [
                  ElevatedButton(onPressed: ()
                      {
                        Navigator.pop(context);
                        _exitDialog(context);
                      }, child: Text("exit"))
                ],
              ),

          ),
      );
  }

  _exitDialog(BuildContext context)
  {
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog
        (
        title: Text("Exit..!!",style: TextStyle(color: Colors.red),),
        content: Text("confirm exit the app",style: TextStyle(color: Colors.black,backgroundColor:Colors.yellowAccent),),
        actions:
        [
          MaterialButton(onPressed: (){
            Navigator.of(context).pop(false);
          },child: Text("cancel",style: TextStyle(color: Colors.blue,backgroundColor: Colors.pinkAccent),),
          ),
          MaterialButton(onPressed: (){
            Navigator.of(context).pop(true);
          },child: Text("OK",style: TextStyle(color: Colors.blue,backgroundColor: Colors.pinkAccent),),
          ),
        ],
      );
    });
  }
}