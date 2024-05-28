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
  var font = 10.0;
  var minimum = 10.0;
  var maximum = 50.0;

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
                Image.asset("asset/increase.png",height: 200,width: 200,),
                Image.asset("asset/increse.png",height: 50,width: 50,),
                SizedBox(height: 100,),
                Text("star",style: TextStyle(fontSize: font,color: Colors.cyan),),
                SizedBox(height: 10,),
                Text("1234",style: TextStyle(fontSize: font,color: Colors.tealAccent),),

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
                            font -= 4;
                          }
                      });
                    },icon: Icon(Icons.remove),),
                SizedBox(height: 10,),

                IconButton(onPressed: ()
                    {
                      setState(() {
                        if(font < maximum)
                          {
                            font += 4;
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
