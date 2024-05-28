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
  var showtext = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
       appBar: AppBar(title: Text("assignment 55 select switch"),),
      body: Center
        (
          child: Column
            (
              children:
              [
                CheckboxListTile(
                    title: Text("show text"),
                    value: showtext,
                    onChanged: (value){
                      setState(() {
                        showtext = value!;
                      });
                    }
                ),SizedBox(height: 80,),

                if(showtext == true)
                  Column
                    (
                      children:
                      [
                        Row
                          (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Image.asset('assets/diakin.png',height: 200,width: 200,),
                              SizedBox(width: 100,),
                              Image.asset('assets/hitachi.png',height: 200,width: 200,),
                            ],

                          ),
                        SizedBox(height: 20,),
                        Text("air conditioners",style: TextStyle(color: Colors.blue),),
                        //SizedBox(height: 20,),
                        Row
                          (
                            mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image.asset('assets/onida.png',height: 200,width: 200,),
                            SizedBox(width: 100,),
                            Image.asset('assets/samsung.png',height: 200,width: 200,),
                          ],
                          )
                      ],
                    )


              ],
            ),
        ),
      );
  }
}

