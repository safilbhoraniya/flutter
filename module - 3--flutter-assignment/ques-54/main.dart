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
  var font = 12.0;
  final minimum = 8.0;
  final maximum = 34.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("font-size"),),
      body: Center
        (
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text("star",style: TextStyle(fontSize: font),),
                SizedBox(height: 10,),
                Text("1234",style: TextStyle(fontSize: font),),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [

                
                IconButton(onPressed: ()
                    {
                      setState(() {
                        if(font > minimum )
                          {
                            font -= 2;
                          }
                      });
                    },icon: Icon(Icons.remove),),
                SizedBox(height: 10,),

                IconButton(onPressed: ()
                    {
                      setState(() {
                        if(font < maximum)
                          {
                            font += 2;
                          }
                      });
                    },icon: Icon(Icons.add),)

              ],
            ),
        ],
      )
        ),
      );
  }
}
