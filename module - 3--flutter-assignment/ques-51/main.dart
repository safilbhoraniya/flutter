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
  TextEditingController number = TextEditingController();
  String reversednum='';

  void reverseNumber()
  {
    String input = number.text;
    if(input.isNotEmpty)
      {
        int? number = int.tryParse(input);
        if(number != null)
          {
            String reverse = number.toString().split('').reversed.join();
            setState(() {
              reversednum = reverse;
            });

              }
          }
    else
    {
      setState(() {
        reversednum ='';
      });
      }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("reverse-number",style: TextStyle(color: Colors.pinkAccent),),),
      body: Center
        (
          child: Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              TextField(controller: number,keyboardType: TextInputType.number,decoration: InputDecoration(labelText: 'enter number for reverse',border: OutlineInputBorder(),prefix: Icon(Icons.numbers)),),
              SizedBox(height: 10.00,),
              ElevatedButton(onPressed: reverseNumber,
                  child: Text("revaerse"),),

              SizedBox(height: 10.00,),
              Text
                (
                  'reversed number is : $reversednum',
                  style: TextStyle(color: Colors.black),
                )

            ],
            ),
        ),
      );
  }
}

