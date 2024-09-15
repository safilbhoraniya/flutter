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
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(centerTitle: true,title: Text("alert dialogue app",style: TextStyle(color: Colors.pinkAccent),),),
        body: Center
          (

            child: Column
              (
                children:
                [
                  ElevatedButton(onPressed: ()
                      {
                        simplealert(context);
                      }, child: Text("simple-alert-dialogue"))
                ],
              ),
          ),
      );
  }

  void simplealert(BuildContext context)
  {
    Widget okbutton = ElevatedButton
      (

        child: Text("okay",style: TextStyle(color: Colors.black,backgroundColor: Colors.tealAccent),),
        onPressed: ()
        {
          Navigator.of(context).pop();
        },
      );
    AlertDialog alert = AlertDialog
      (
        title: Text("simple-alert dialogue",style: TextStyle(backgroundColor: Colors.yellow),),
        content: Text("simple message for alert",style: TextStyle(backgroundColor: Colors.red),),
        actions:
        [
          okbutton
        ],
      );
    showDialog(context: context, builder: (BuildContext context)
    {
      return alert;
    });


  }
}
