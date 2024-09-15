import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        appBar: AppBar(centerTitle: true,title: Text("option menu app",style: TextStyle(backgroundColor: Colors.orange),),),
        backgroundColor: Colors.tealAccent,
        body: Center
          (

          ),
      drawer: Drawer
        (
          child: ListView
            (
              children:
              [
                ListTile
                  (
                    leading: Icon(Icons.person_off),title: Text("profile"),
                    onTap: ()
                  {
                    Navigator.pop(context);
                  },//contentPadding: RenderErrorBox.padding,
                  ),
                ListTile
                  (
                  leading: Icon(Icons.logout),title: Text("logout"),
                  onTap: ()
                  {
                    Navigator.pop(context);
                  },//contentPadding: RenderErrorBox.padding,
                  )
              ],
            ),
        ),
      );
  }
}
