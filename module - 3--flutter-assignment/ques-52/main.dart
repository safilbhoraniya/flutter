import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: myapp()));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp>
{
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double result = 0;
  var operation ='';

  void Result()
  {
    double num1 = double.tryParse(number1.text) ?? 0;
    double num2 = double.tryParse(number2.text) ?? 0;

    setState(() {
      switch(operation)
          {
            case "addition":
              result = num1 + num2;
              break;

            case "substraction":
              result = num1 - num2;
              break;

            case "multiplication":
              result = num1 * num2;
              break;

            case "division":
              result = num1 / num2;
              break;

              
          }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("calculator"),),
      body: Center
        (
         child: Column
           (
           mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              TextFormField(controller: number1,decoration: InputDecoration(hintText: "enter first number"),style: TextStyle(backgroundColor: Colors.deepOrangeAccent),),
              SizedBox(height: 10,),
              TextFormField(controller: number2,decoration: InputDecoration(hintText: "enter number 2"),style: TextStyle(backgroundColor: Colors.deepOrangeAccent),),
              SizedBox(height: 10,),
              
              RadioListTile(
                  title: Text("addition"),
                  value: 'addition',
                  groupValue: operation,
                  onChanged: (value){
                    setState(() {
                      operation = value!;
                    });
                  }),

              RadioListTile(
                  title: Text("substraction"),
                  value: 'substraction',
                  groupValue: operation,
                  onChanged: (value){
                    setState(() {
                      operation = value!;
                    });
                  }),

              RadioListTile(
                  title: Text("multiplication"),
                  value: 'multiplication',
                  groupValue: operation,
                  onChanged: (value){
                    setState(() {
                      operation = value!;
                    });
                  }),

              RadioListTile(
                  title: Text("division"),
                  value: 'division',
                  groupValue: operation,
                  onChanged: (value){
                    setState(() {
                      operation = value!;
                    });
                  }),
              
              ElevatedButton(onPressed: ()
                   {
                     Result();

                   },

                   child: Text("click")),

              Text("result = $result")

                  ],
                  ),
                  ),

      );
  }
}

